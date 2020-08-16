WorldMapState = Class{}

function WorldMapState:init(stack, def)
  local this = {}
  
  setmetatable(this, self)
  return this
end

function WorldMapState:enter(dt)

end

function WorldMapState:exit(dt)

end

function WorldMapState:update(dt)

end

function WorldMapState:handleInput(dt)

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

  

end