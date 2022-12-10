WorldMapState = Class{}

domainColors = {
  {1,0,0},
  {1,1,0},
  {0,1,0},
  {0,1,1},
  {0,0,1},
  {1,0,1},
  {1,0.5,0},
  {0,1,0.5},
  {0.5,0,1},
  {0,0.5,1},
  {0.5,1,0}
}

function WorldMapState:new(stack, def)
  local this = {}
  setmetatable(this, self)

  this.worldMapPosition = Vector:new(50, 50)
  this.worldMapSize = Vector:new(540, 240)
  this.mapMargin = 24
  this.hoverIndex = -1
  this.displayLayer = nil

  this.activeMapSize = Vector:new(
    this.worldMapSize.x - this.mapMargin*2,
    this.worldMapSize.y - this.mapMargin*2
  )

  this.iconOffset = math.floor(worldMapSwords:getWidth() / 2)
  this.regions = {}
  this.domains = {}

  this.progressManager = ProgressManager:new({
    mapState = this
  })

  this:generateMap()
  this:generateDomains()
  this:generateRegions()

  return this
end

function WorldMapState:enter()

end

function WorldMapState:exit()

end

function WorldMapState:update(dt)
  local mouseX, mouseY = 0, 0
  if mousePosition() then
    mouseX, mouseY = mousePosition()
  end

  local offsetX = self.worldMapPosition.x + self.mapMargin
  local offsetY = self.worldMapPosition.y + self.mapMargin
  self.hoverIndex = -1

  for i, region in pairs(self.progressManager.regions) do
    if mouseX >= offsetX + region.worldMapPosition.x - self.iconOffset and
      mouseY >= offsetY + region.worldMapPosition.y - self.iconOffset and
      mouseX <= offsetX + region.worldMapPosition.x + self.iconOffset and
      mouseY <= offsetY + region.worldMapPosition.y + self.iconOffset
      then
        self.hoverIndex = i
        if love.mouse.clicked then
          self.progressManager.regions[i]:clear()
        end
      else
    end
  end

  if love.keyboard.wasPressed('space') then
    self:generateMap()
    self:generateDomains()
    self:generateRegions()
  end

  if love.keyboard.wasPressed('v') then
    if self.displayLayer == "domain" then
      self.displayLayer = nil
    else
      self.displayLayer = "domain"
    end
  end

  if love.keyboard.wasPressed('t') then
    if self.displayLayer == "temp" then
      self.displayLayer = nil
    else
      self.displayLayer = "temp"
    end
  end

  if love.keyboard.wasPressed('r') then
    if self.displayLayer == "rain" then
      self.displayLayer = nil
    else
      self.displayLayer = "rain"
    end
  end
end

function WorldMapState:generateMap()
  self.elevation = perlinNoise(self.worldMapSize)
  self.elevationImage = love.graphics.newImage(self.elevation)

  self.temperature = temperaturePerlin(self.worldMapSize)
  self.temperatureImage = love.graphics.newImage(self.temperature)

  self.rainfall = temperaturePerlin(self.worldMapSize)
  self.rainfallImage = love.graphics.newImage(self.rainfall)
end

function WorldMapState:generateDomains()
  self.domainImageData = love.image.newImageData(self.worldMapSize.x, self.worldMapSize.y)
  self.domainPoints = generate_poisson(self.activeMapSize.x, self.activeMapSize.y, 112, 30)

  self.domainMap = voronoiImageFromPoints(self.worldMapSize, self.domainPoints)
  for y = 0, #self.domainMap do
    for x = 0, #self.domainMap[y] do
      self.domainImageData:setPixel(
          x, y,
          self.domainMap[y][x][1],
          self.domainMap[y][x][2],
          self.domainMap[y][x][3]
        )
    end
  end

  self.domainMapImage = love.graphics.newImage(self.domainImageData)

  for k, point in pairs(self.domainPoints) do
    local domain = Domain:new(
      {
        domains = self.progressManager.domains,
        worldMapPosition = Vector:new(point.x, point.y),
        nameGenerator = random(placeNameGenerators),
        color = self.domainMap[math.floor(point.y + self.mapMargin)][math.floor(point.x + self.mapMargin)],
        mapState = self,
        progressManager = self.progressManager
      })
    table.insert(self.progressManager.domains, domain)
  end

  table.sort(self.progressManager.domains, function(a, b)return a.worldMapPosition.x < b.worldMapPosition.x end)
  self.firstDomain = self.progressManager.domains[1]
  self.rightmostDomain = self.progressManager.domains[#self.progressManager.domains]

  table.insert(self.progressManager.activeDomains, self.firstDomain)
  table.insert(self.firstDomain.nextDomains, self.firstDomain:domainsByDistance()[1])
  table.insert(self.firstDomain.nextDomains, self.firstDomain:domainsByDistance()[2])
end

function WorldMapState:generateRegions()
  self.points = generate_poisson(self.activeMapSize.x, self.activeMapSize.y, 48, 30)

  for k, point in pairs(self.points) do
    local region = Region:new({
      elevation = round(self.elevation:getPixel(point.x+self.mapMargin ,point.y+self.mapMargin)*100 - 30),
      temperature = round(self.temperature:getPixel(point.x+self.mapMargin, point.y+self.mapMargin)*100),
      rainfall = round(self.rainfall:getPixel(point.x+self.mapMargin, point.y+self.mapMargin)*100),
      worldMapPosition = Vector:new(point.x, point.y),
      color = self.domainMap[math.floor(point.y + self.mapMargin)][math.floor(point.x + self.mapMargin)],
      progressManager = self.progressManager
    })

    table.insert(self.progressManager.regions, region)

    for i, domain in pairs(self.progressManager.domains) do
      if region.color == domain.color then
        domain:addRegion(region)
      end
    end
  end

  local point1 = self.firstDomain.nextDomains[1].worldMapPosition
  local point2 = self.firstDomain.nextDomains[2].worldMapPosition 
 
  local direction = point1:directionTo(point2)
  local distance = point1:distanceFrom(point2) / 2

  self.centerPoint = point1:add(direction:multiply(distance))
  self.firstDomain:orderRegionsByDistance(self.centerPoint)
end

function WorldMapState:render()
  love.graphics.draw(mapEdge, self.worldMapPosition.x -32, self.worldMapPosition.y-6)
  love.graphics.draw(mapEdge, self.worldMapPosition.x + self.worldMapSize.x+32, self.worldMapPosition.y-6, 0, -1, 1)
    
  love.graphics.setShader(gShaders['worldMap'])
  love.graphics.draw(self.elevationImage, self.worldMapPosition.x, self.worldMapPosition.y)
  love.graphics.setShader()

  if self.displayLayer == "domain" then
    love.graphics.draw(self.domainMapImage, self.worldMapPosition.x, self.worldMapPosition.y)
    for i, domain  in pairs(self.firstDomain.nextDomains) do
      love.graphics.line(
        self.firstDomain.worldMapPosition.x + self.worldMapPosition.x + self.mapMargin,
        self.firstDomain.worldMapPosition.y + self.worldMapPosition.y + self.mapMargin,
        domain.worldMapPosition.x + self.worldMapPosition.x + self.mapMargin,
        domain.worldMapPosition.y + self.worldMapPosition.y + self.mapMargin
    )
    end
  elseif self.displayLayer == "temp" then
    love.graphics.setShader(gShaders['temperature'])
    love.graphics.draw(self.temperatureImage, self.worldMapPosition.x, self.worldMapPosition.y)
    love.graphics.setShader()
  
  elseif self.displayLayer == "rain" then
    love.graphics.setShader(gShaders['rainfall'])
    love.graphics.draw(self.rainfallImage, self.worldMapPosition.x, self.worldMapPosition.y)
    love.graphics.setShader()
  end

  for i,domain in pairs(self.progressManager.domains) do
    for j,region in pairs(domain.regions) do
      love.graphics.setColor(region.color)
      local scale = 1

      if region:isLast() then
        scale = 1.5
      end

      love.graphics.draw(worldMapSwords,
        self.worldMapPosition.x + self.mapMargin + region.worldMapPosition.x - self.iconOffset,
        self.worldMapPosition.y + self.mapMargin + region.worldMapPosition.y - self.iconOffset,
        0,
        scale,scale
      )
    end
  end

  love.graphics.setColor(1,1,1)
  for i, domain in pairs(self.progressManager.activeDomains) do
    for j, region in pairs(domain.regions) do
      love.graphics.printf( j,
        region.worldMapPosition.x + self.worldMapPosition.x + self.mapMargin,
        region.worldMapPosition.y + self.worldMapPosition.y + self.mapMargin,
        32, "left"
      )
    end
  end

  if self.hoverIndex ~= -1 then
    self:displayRegionDetails(self.progressManager.regions[self.hoverIndex])
    self:displayDomainDetails(self.progressManager.regions[self.hoverIndex].domain)
  end
end

function WorldMapState:displayDomainDetails(domain)
  local xPos = self.worldMapPosition.x
  local yPos = self.worldMapPosition.y + self.worldMapSize.y + 32
  local width = 500
  local lineheight = 18

  love.graphics.setColor(0.2,0.2,0.2)
  love.graphics.rectangle("fill", xPos, yPos, width, 200)
  yPos = yPos + 4
  xPos = xPos + 4

  love.graphics.setColor(1,1,1)
  love.graphics.printf( domain.domainName,
    xPos, yPos, width, "left"
  )

  if domain.cleared then
    love.graphics.setColor(0,1,0)
    love.graphics.printf("cleared",
      xPos, yPos, width-6, "right"
    )
  end
  yPos = yPos + lineheight
end

function WorldMapState:displayRegionDetails(region)
  local width = 500
  local xPos = self.worldMapPosition.x + self.worldMapSize.x + 48 + 4
  local yPos = 50
  local lineheight = 18

  love.graphics.setColor(0.2,0.2,0.2)
  love.graphics.rectangle("fill", xPos, yPos, width, 400)
  yPos = 50 + 4
  xPos = xPos + 4

  love.graphics.setColor(1,1,1)
  love.graphics.printf( region.placeName,
    xPos, yPos, width, "left"
  )

  if region.cleared then
    love.graphics.setColor(0,1,0)
    love.graphics.printf("cleared",
      xPos, yPos, width-6, "right"
    )
  end

  yPos = yPos + lineheight

  love.graphics.setColor(1,1,1)
  -- for i, faction in pairs(region.factions) do
  --   love.graphics.printf( faction.name,
  --   xPos, yPos, width, "left" )
  --   yPos = yPos + lineheight
  -- end

  love.graphics.printf( "temperature: "..region.temperature, xPos, yPos, width, "left" )
  yPos = yPos + lineheight
  love.graphics.printf( "rainfall: "..region.rainfall, xPos, yPos, width, "left" )
  yPos = yPos + lineheight
  love.graphics.printf( "elevation: "..region.elevation, xPos, yPos, width, "left" )
  yPos = yPos + lineheight
  love.graphics.printf( region.landscape, xPos, yPos, width, "left" )
  yPos = yPos + lineheight

end
