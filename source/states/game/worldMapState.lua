WorldMapState = Class{}

function WorldMapState:init(stack, def)
  local this = {
    worldMapX = 200,
    worldMapY = 100,
    mapSize = 220,
    hoverIndex = nil,
    placeName = gNames.randomJapanesePlace(),
    placeTypes = {
      "Frontier Lands",
      "Unclaimed Lands",
      "Abandoned Lands",
      "Pilgrimmage Lands",
      "Cursed Lands",
      "Bandit-Controlled Territory",
      "Empire-Controlled Territory"
    },
    markers = {}
  }

  this.map = perlinNoise.generateNoise()
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
    if mouseX > v.x and mouseX < v.x+16 and
    mouseY > v.y and mouseY < v.y+16 then
      self.hoverIndex = k
      return
    else
      self.hoverIndex = nil
    end
  end
end

function WorldMapState:generateMap()
  self.map = perlinNoise.generateNoise()
  perlinNoise.addRivers(self.map)
  self.mapImage = perlinNoise.createImage(self.map)
  self.placeType = random(self.placeTypes)
  self.placeName = gNames.randomJapanesePlace()
end

function WorldMapState:generateLocations()
  self.markers = {}

  for i = 1, 10 do
    local marker = {
      name = gNames.randomJapanesePlace(),
      territory = random(self.placeTypes),
      x = self.worldMapX+math.random(20,self.mapSize-50),
      y = self.worldMapY+math.random(20,self.mapSize-50)
    }
    table.insert(self.markers, marker)
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

  love.graphics.draw(mapEdge, worldMapX -32, worldMapY-6)
  love.graphics.draw(mapEdge, worldMapX + mapSize+32, worldMapY-6, 0, -1, 1)
    
  love.graphics.setShader(self.shader)
  love.graphics.draw(self.mapImage, worldMapX, worldMapY)
  love.graphics.setShader()

  -- love.graphics.draw(worldMapSwords, worldMapX+50, worldMapY+50)
  -- love.graphics.draw(worldMapSwords, worldMapX+mapSize-50, worldMapY+mapSize-50)

  for k,v in pairs(self.markers) do
    love.graphics.draw(worldMapSwords, v.x, v.y)
  end

  if self.hoverIndex ~= nil then
    love.graphics.setFont(gFonts['default'])
    printWithShadow(self.markers[self.hoverIndex].name, worldMapX,worldMapY-32,200,"center")
    printWithShadow(self.markers[self.hoverIndex].territory, worldMapX,worldMapY-16,200,"center", {0.5,0.5,0.5,1})
  end
end