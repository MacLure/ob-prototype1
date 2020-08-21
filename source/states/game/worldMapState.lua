WorldMapState = Class{}

function WorldMapState:init(stack, def)
  local this = {
    grid = {},
    -- markers = {}
  }

  this.shader = love.graphics.newShader[[
    vec4 effect(vec4 color, Image texture, vec2 uvs, vec2 pixcoord)
    {
      vec4 pixel = Texel(texture, uvs);

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

  this.mapSize = 220

  setmetatable(this, self)
  
  this:generateMap()

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
  end
end

function WorldMapState:generateMap()
  self.noise = perlinNoise.generateNoise(self.mapSize, 50)
  -- perlinNoise.addLandFeature(self.noise)
  self.mapImage = perlinNoise.createImage(self.noise)
end


function WorldMapState:render(dt)
  local worldMapX = 200
  local worldMapY = 100
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
end