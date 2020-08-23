WorldMapState = Class{}

function WorldMapState:init(stack, def)
  local this = {
    worldMapX = 200,
    worldMapY = 100,
    mapSize = 200,
    subMapSize = 20,
    hoverIndex = nil,
    placeName = gNames.randomJapanesePlace(),
    placeTypes = {
      "Frontier Lands",
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
      gNames.randomArabicPlace
    },
    markers = {},
    nodes = {},
  }

  this.map = perlinNoise.generateNoise(200,200)

  -- this.map = perlinNoise.voronoi(200,200, 20)
  this.shader = love.graphics.newShader[[
    vec4 effect(vec4 color, Image texture, vec2 uvs, vec2 pixcoord)
    {
      vec4 pixel = Texel(texture, uvs);

      pixel.r = pixel.r + 0.2;

      if (pixel.r < 0.33) {
        pixel.r = 0.87;
        pixel.g = 0.87;
        pixel.b = 0.75;
      }

      else if (pixel.r >= 0.33 && pixel.r < 0.40) {
          pixel.r = 0.75;
          pixel.g = 0.81;
          pixel.b = 0.69;
        }

      else if (pixel.r >= 0.35 && pixel.r < 0.40) {
          pixel.r = 0.69;
          pixel.g = 0.78;
          pixel.b = 0.62;
        }

      else if (pixel.r >= 0.40 && pixel.r < 0.47) {
          pixel.r = 0.47;
          pixel.g = 0.59;
          pixel.b = 0.56;
        }

      else if (pixel.r >= 0.47 && pixel.r < 0.50) {
          pixel.r = 0.31;
          pixel.g = 0.43;
          pixel.b = 0.50;
        }

      else if (pixel.r >= 0.5 && pixel.r < 0.53) {
          pixel.r = 0.25;
          pixel.g = 0.22;
          pixel.b = 0.12;
        }

      else if (pixel.r >= 0.53 && pixel.r < 0.56) {
        pixel.r = 0.47;
        pixel.g = 0.37;
        pixel.b = 0.18;
      }

      else if (pixel.r >= 0.56 && pixel.r < 0.59) {
        pixel.r = 0.69;
        pixel.g = 0.56;
        pixel.b = 0.34;
      }

      else if (pixel.r >= 0.59 && pixel.r < 0.62) {
        pixel.r = 0.78;
        pixel.g = 0.69;
        pixel.b = 0.47;
      }

      else if (pixel.r >= 0.62) {
        pixel.r = 0.87;
        pixel.g = 0.87;
        pixel.b = 0.75;
      }
  
      return pixel;
    }
  ]]

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
    if mouseX > v.x and mouseX < v.x+14 and
    mouseY > v.y and mouseY < v.y+14 then
      self.hoverIndex = k
      return
    else
      self.hoverIndex = nil
    end
  end
end

function WorldMapState:generateSubMap(marker)
  local width, height = self.subMapSize, self.subMapSize
  local x =  marker.x - self.worldMapX
  local y =  marker.y - self.worldMapY
  return  perlinNoise.createSubMap(self.map, x, y, width, height)
  -- self.subMapImage = perlinNoise.createImage(self.subMap)
end

function WorldMapState:generateMap()
  self.map = perlinNoise.generateNoise(200,200)
  -- perlinNoise.addRivers(self.map)
  self.mapImage = perlinNoise.createImage(self.map)
end

function WorldMapState:generateLocations()
  self.nodes = {}
  self.markers = {}

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
    x = self.worldMapX + self.mapSize/2 + (configuration.x * (self.mapSize/2-20))-8,
    y = self.worldMapY + self.mapSize/2 + (configuration.y * (self.mapSize/2-20))-8,
    name = random(self.randomPlaceNames)(),
    territory = "Frontier",
  }

  for k,v in pairs(configuration) do
    if v == 1 then configuration[k] = -1 else configuration[k] = 1 end
  end

  self.finish = {
    x = self.worldMapX + self.mapSize/2 + (configuration.x * (self.mapSize/2-20))-8,
    y = self.worldMapY + self.mapSize/2 + (configuration.y * (self.mapSize/2-20))-8,
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

      for i = 1, #self.markers do
        local fieldNoiseMap = self:generateSubMap(self.markers[i])
        local fieldMap = mapBuilder(fieldNoiseMap)
        self.markers[i].subMap = Map:init(fieldMap)
      end
    end
  end

  table.insert(self.markers, self.start)
  table.insert(self.markers, self.finish)
end

function WorldMapState:render(dt)
  local worldMapX = self.worldMapX
  local worldMapY = self.worldMapY
  local tileSize = 36
  local mapSize = 5
  local mapSize = self.mapSize
  local y = 0
  local x = 0

  love.graphics.draw(mapEdge, worldMapX -32, worldMapY-6)
  love.graphics.draw(mapEdge, worldMapX + mapSize+32, worldMapY-6, 0, -1, 1)
    
  love.graphics.setShader(self.shader)
  love.graphics.draw(self.mapImage, worldMapX, worldMapY)
  love.graphics.setShader()

  for k,v in pairs(self.markers) do
    love.graphics.draw(worldMapSwords, v.x, v.y)
  end
  
  love.graphics.setColor(1,0,0)
  local curve = love.math.newBezierCurve( 10,10,20,20,30,03,40,40,50,50 )
  curve:render(2)
  love.graphics.setColor(1,1,1)

  if self.hoverIndex ~= nil then
    love.graphics.setFont(gFonts['default'])
    printWithShadow(self.markers[self.hoverIndex].name, worldMapX,worldMapY-32,200,"center")
    printWithShadow(self.markers[self.hoverIndex].territory, worldMapX,worldMapY-16,200,"center", {0.5,0.5,0.5,1})
    self.markers[self.hoverIndex].subMap:render()
    love.graphics.rectangle(
      "line",
      self.markers[self.hoverIndex].x,
      self.markers[self.hoverIndex].y,
      self.subMapSize,
      self.subMapSize
    )
  end

  -- if self.subMapImage then
    -- love.graphics.setShader(self.shader)
    -- love.graphics.draw(self.subMapImage, 10,10)

    -- love.graphics.setShader()
  

end