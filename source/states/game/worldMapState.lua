WorldMapState = Class{}

function WorldMapState:init(stack, def)
  local this = {
    worldMapX = 350,
    worldMapY = 100,
    mapSize = 240,
    activeMapSize = 200,
    subMapSize = 40,
    hoverIndex = nil,
    placeName = gNames.randomJapanesePlace(),
    placeTypes = {
      "Unclaimed Lands",
      "Abandoned Lands",
      "Pilgrimmage Route",
      "Cursed Lands",
      "Bandit-Controlled Territory",
      "Empire-Held Territory",
      "Imperial Heartland",
      "Independent Kingdom",
      "The Holy City",
    },
    randomPlaceNames = {
      gNames.randomJapanesePlace,
      gNames.randomChinesePlace,
      gNames.randomKoreanPlace,
      gNames.randomNahuatlPlace,
      gNames.randomGermanPlace,
      gNames.randomEnglishPlace,
      gNames.randomFrenchPlace,
      gNames.randomArabicPlace,
      gNames.randomBrazilianPlace
    },
    markers = {},
    nodes = {},
    shader = gShaders['worldMap']
  }

  this.activeMapX = this.worldMapX + (this.mapSize - this.activeMapSize) / 2
  this.activeMapY = this.worldMapY + (this.mapSize - this.activeMapSize) / 2

  -- this.map = noise.perlinNoise(this.mapSize, this.mapSize)

  -- this.map = noise.voronoi(200,200, 20)

  setmetatable(this, self)
  
  this:generateMap()
  this:generateLocations()

  return this
end

function WorldMapState:enter(dt)

end

function WorldMapState:exit(dt)

end

function WorldMapState:update(dt)

end

function WorldMapState:handleInput(dt)
  if love.keyboard.wasPressed('space') then
    self:generateMap()
    self:generateLocations()
  end

  local worldMapX = self.worldMapX
  local worldMapY = self.worldMapY
  local mouseX, mouseY = mousePosition()

  for k,v in pairs(self.markers) do
    if mouseX > v.iconX and mouseX < v.iconX+14 and
    mouseY > v.iconY and mouseY < v.iconY+14 then
      self.hoverIndex = k
      return
    else
      self.hoverIndex = nil
    end
  end
end

function WorldMapState:generateSubMap(marker)
  local iconOffset = math.floor(self.subMapSize / 2)
  local width, height = self.subMapSize, self.subMapSize
  local x =  marker.x - self.worldMapX
  local y =  marker.y - self.worldMapY
  return  noise.createSubMap(self.map, x-iconOffset, y-iconOffset, width, height)
end

function WorldMapState:generateMap()
  self.map = noise.perlinNoise(self.mapSize,self.mapSize)
  self.mapImage = noise.imageFromData(self.map)
end

function WorldMapState:generateLocations()
  self.nodes = {}
  self.markers = {}

  local iconOffset = math.floor(worldMapSwords:getWidth() / 2)

  local configurations = {
    {x = true, y = true},
    {x = true, y = false},
    {x = false, y = true},
    {x = false, y = false}
  }
  local configuration = random(configurations)

  for k,v in pairs(configuration) do
    if v then configuration[k] = 1 else configuration[k] = -1 end
  end

  self.start = {
    x = self.activeMapX + self.activeMapSize/2 + (configuration.x * (self.activeMapSize/2-20)),
    y = self.activeMapY + self.activeMapSize/2 + (configuration.y * (self.activeMapSize/2-20)),
    name = random(self.randomPlaceNames)(),
    territory = "Frontier",
  }

  for k,v in pairs(configuration) do
    if v == 1 then configuration[k] = -1 else configuration[k] = 1 end
  end

  self.finish = {
    x = self.activeMapX + self.activeMapSize/2 + (configuration.x * (self.activeMapSize/2-20)),
    y = self.activeMapY + self.activeMapSize/2 + (configuration.y * (self.activeMapSize/2-20)),
    name = random(self.randomPlaceNames)(),
    territory = "The Imperial Capital",
  }

  local lastX = self.start.x
  local lastY = self.start.y

  local nodeNum = 4
  subNodes = {2,4,4,3}
  local spacing = distance(self.start.x, self.start.y, self.finish.x, self.finish.y)/nodeNum/1.75

  for i = 1, nodeNum do
    table.insert(self.nodes, {
      x = lastX + spacing * i * configuration.x +4,
      y = lastY + spacing * i * configuration.y +4,
      subNodeNum = subNodes[i],
      subNodes = {},
      dirX = configuration.x,
      dirY = configuration.y
    })

    for j = 1, self.nodes[i].subNodeNum do
      local adjustment = 1 + self.nodes[i].subNodeNum * 0.1
      local subSpacing = spacing / 2 * (self.nodes[i].subNodeNum - math.abs((nodeNum / 2) - self.nodes[i].subNodeNum))

      local subNode = {
        x = self.nodes[i].x + subSpacing * (self.nodes[i].subNodeNum/adjustment - j) * -configuration.x,
        y = self.nodes[i].y + subSpacing * (self.nodes[i].subNodeNum/adjustment - j) * configuration.y,
        name = random(self.randomPlaceNames)(),
        territory = random(self.placeTypes),
      }
      table.insert(self.nodes[i].subNodes, subNode)
      table.insert(self.markers, subNode)
    end
  end

  table.insert(self.markers, self.start)
  table.insert(self.markers, self.finish)

  for i = 1, #self.markers do
    local fieldNoiseMap = self:generateSubMap(self.markers[i])
    local fieldMap = mapBuilder(fieldNoiseMap)
    self.markers[i].subMap = Map:init(fieldMap)

    self.markers[i].iconX = self.markers[i].x - iconOffset
    self.markers[i].iconY = self.markers[i].y - iconOffset
  end
end

function WorldMapState:render(dt)
  local worldMapX = self.worldMapX
  local worldMapY = self.worldMapY
  local tileSize = 36
  local mapSize = 5
  local mapSize = self.mapSize
  local y = 0
  local x = 0

  -- love.graphics.draw(mapEdge, worldMapX -32, worldMapY-6)
  -- love.graphics.draw(mapEdge, worldMapX + mapSize+32, worldMapY-6, 0, -1, 1)
    
  love.graphics.setShader(self.shader)
  love.graphics.draw(self.mapImage, worldMapX, worldMapY)
  love.graphics.setShader()

  for k,v in pairs(self.markers) do
    love.graphics.draw(worldMapSwords, v.iconX, v.iconY)
  end
  
  if self.hoverIndex ~= nil then
    love.graphics.setFont(gFonts['default'])
    printWithShadow(self.markers[self.hoverIndex].name, worldMapX,worldMapY-32,200,"center")
    printWithShadow(self.markers[self.hoverIndex].territory, worldMapX,worldMapY-16,200,"center", {0.5,0.5,0.5,1})
    self.markers[self.hoverIndex].subMap:render()
    love.graphics.rectangle(
      "line",
      self.markers[self.hoverIndex].x - math.floor(self.subMapSize/2),
      self.markers[self.hoverIndex].y - math.floor(self.subMapSize/2),
      self.subMapSize,
      self.subMapSize
    )
  end

    --   love.graphics.rectangle(
    --   "line",
    --   self.activeMapX,
    --   self.activeMapY,
    --   self.activeMapSize,
    --   self.activeMapSize
    -- )
end