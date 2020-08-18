WorldMapState = Class{}

function WorldMapState:init(stack, def)
  local this = {
    grid = {}
  }
  
  setmetatable(this, self)
  
  this.perlinGridImage = this:noise()

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
    self.perlinGridImage = self:noise()
  end
end

function WorldMapState:noise()
  return perlinNoise.generateNoise(20,5)
end


function WorldMapState:render(dt)
  local worldMapX = 200
  local worldMapY = 100
  local tileSize = 36
  local mapSize = 5
  local y = 0
  local x = 0

  for i = 1, mapSize do
    for j = 1, mapSize do
      love.graphics.draw(worldTiles, worldMapX +x, worldMapY +y)
      x = x + 36
    end
    x = 0
    y = y + 36
  end
  love.graphics.draw(mapEdge, worldMapX -32, worldMapY-6)
  love.graphics.draw(mapEdge, worldMapX + (mapSize*tileSize)+32, worldMapY-6, 0, -1, 1)

  love.graphics.draw(self.perlinGridImage, 100, 100)
  -- for x = 1, #self.grid do
  --   for y = 1, #self.grid[x] do
  --     local f = 1 * self.grid[x][y]
  --     love.graphics.setColor( f, f, f, 1 )
  --     love.graphics.rectangle( 'fill', x * 8, y * 8, 7, 7 )
  --     love.graphics.setColor( 1, 1, 1, 1 )
  --   end
  -- end

end