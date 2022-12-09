WorldMapState = Class{}

function WorldMapState:new(stack, def)
  local this = {}
  setmetatable(this, self)

  this.worldMapPosition = Vector:new(50, 50)
  this.worldMapSize = Vector:new(540, 240)
  this.mapMargin = 24
  this.hoverIndex = -1
  this.showDomainMap = false

  this.activeMapSize = Vector:new(
    this.worldMapSize.x - this.mapMargin*2,
    this.worldMapSize.y - this.mapMargin*2
  )

  this.iconOffset = math.floor(worldMapSwords:getWidth() / 2)
  this.nodes = {}
  this.shader = gShaders['worldMap']

  this:generateMap()
  this:generateLocations()

  return this
end

function WorldMapState:enter()

end

function WorldMapState:exit()

end

function WorldMapState:update(dt)
  local mouseX, mouseY = mousePosition()
  local offsetX = self.worldMapPosition.x + self.mapMargin
  local offsetY = self.worldMapPosition.y + self.mapMargin

  self.hoverIndex = -1

  for i, node in pairs(self.nodes) do
    if mouseX >= offsetX + node.position.x - self.iconOffset and
      mouseY >= offsetY + node.position.y - self.iconOffset and
      mouseX <= offsetX + node.position.x + self.iconOffset and
      mouseY <= offsetY + node.position.y + self.iconOffset
      then
        self.hoverIndex = i
      else
    end
  end

  if love.keyboard.wasPressed('space') then
    self:generateMap()
    self:generateLocations()
  end

  if love.keyboard.wasPressed('v') then
    self.showDomainMap = not self.showDomainMap
  end
end

function WorldMapState:generateMap()
  self.map = perlinNoise(self.worldMapSize)
  self.mapImage = love.graphics.newImage(self.map)

  local domainImageData = love.image.newImageData(self.worldMapSize.x, self.worldMapSize.y)

  self.domainPoints = generate_poisson(self.activeMapSize.x, self.activeMapSize.y, 112, 30)
  self.domainMap = voronoiImageFromPoints(self.worldMapSize, self.domainPoints)

  for y = 0, #self.domainMap do
    for x = 0, #self.domainMap[y] do
      domainImageData:setPixel(
          x, y,
          self.domainMap[y][x][1],
          self.domainMap[y][x][2],
          self.domainMap[y][x][3]
        )
    end
  end
  self.domainMapImage = love.graphics.newImage(domainImageData)
end

function WorldMapState:generateLocations()
  self.domains = {}

  for k, point in pairs(self.domainPoints) do
    local domain = Domain:new({
      worldMapPosition = Vector:new(point.x, point.y),
      nameGenerator = random(placeNameGenerators)
    })
    table.insert(self.domains, domain)
  end

  table.sort(self.domains, function(a, b)return a.worldMapPosition.x < b.worldMapPosition.x end)
  self.leftmostDomain = self.domains[1]
  self.rightmostDomain = self.domains[#self.domains]

  local candidateDomains = domainsByDistance(self.leftmostDomain, self.domains)

  table.insert(self.leftmostDomain.nextDomains, candidateDomains[1])
  table.insert(self.leftmostDomain.nextDomains, candidateDomains[2])

  self.points = generate_poisson(self.activeMapSize.x, self.activeMapSize.y, 48, 30)
  self.nodes = {}

  for k, point in pairs(self.points) do
    table.insert(self.nodes, {
      position = point,
      region = Region:new({landscape = random(landscapes)}),
      color = self.domainMap[math.floor(point.y + self.mapMargin)][math.floor(point.x + self.mapMargin)]
    })
  end
end


function domainsByDistance(domain, domains)
  local orderedDomains = {}

  for i, candidateDomain in pairs(domains) do
    if candidateDomain ~= domain then
      if not contains(orderedDomains, candidateDomain) then
        table.insert(orderedDomains, candidateDomain)
      end
    end
  end

  local function compareDistance(a, b)
    local distanceA = domain.worldMapPosition:distanceFrom(a.worldMapPosition)
    local distanceB = domain.worldMapPosition:distanceFrom(b.worldMapPosition)
    return distanceA < distanceB
  end
  
  table.sort(orderedDomains, compareDistance)
  return orderedDomains
end

function WorldMapState:render()
  love.graphics.draw(mapEdge, self.worldMapPosition.x -32, self.worldMapPosition.y-6)
  love.graphics.draw(mapEdge, self.worldMapPosition.x + self.worldMapSize.x+32, self.worldMapPosition.y-6, 0, -1, 1)
    
  love.graphics.setShader(self.shader)
  love.graphics.draw(self.mapImage, self.worldMapPosition.x, self.worldMapPosition.y)
  love.graphics.setShader()

  if self.showDomainMap then
    love.graphics.draw(self.domainMapImage, self.worldMapPosition.x, self.worldMapPosition.y)
    for i, domain  in pairs(self.leftmostDomain.nextDomains) do
      love.graphics.line(
        self.leftmostDomain.worldMapPosition.x + self.worldMapPosition.x + self.mapMargin,
        self.leftmostDomain.worldMapPosition.y + self.worldMapPosition.y + self.mapMargin,
        domain.worldMapPosition.x + self.worldMapPosition.x + self.mapMargin,
        domain.worldMapPosition.y + self.worldMapPosition.y + self.mapMargin
    )
    end
  end

  for k,node in pairs(self.nodes) do
    love.graphics.setColor(node.color)
    love.graphics.draw(worldMapSwords,
      self.worldMapPosition.x + self.mapMargin + node.position.x - self.iconOffset,
      self.worldMapPosition.y + self.mapMargin + node.position.y - self.iconOffset
    )
  end

  if self.hoverIndex ~= -1 then
    love.graphics.setColor(0.2,0.2,0.2)
    love.graphics.rectangle("fill", self.worldMapPosition.x + self.worldMapSize.x + 48, 50, 500, 400)
    self:displayRegionDetails(self.nodes[self.hoverIndex].region)
  end
end

function WorldMapState:displayRegionDetails(region)
  local width = 500
  local xPos = self.worldMapPosition.x + self.worldMapSize.x + 48 + 4
  local yPos = 50 + 4
  local lineheight = 18
  love.graphics.setColor(1,1,1)
  love.graphics.printf( self.nodes[self.hoverIndex].region.placeName,
  xPos, yPos, width, "left" )

  yPos = yPos + lineheight

  for i, faction in pairs(region.factions) do
    love.graphics.printf( faction.name,
    xPos, yPos, width, "left" )
    yPos = yPos + lineheight
  end
end
