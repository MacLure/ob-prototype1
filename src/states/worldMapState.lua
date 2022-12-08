WorldMapState = Class{}

function WorldMapState:new(stack, def)
  local this = {}
  setmetatable(this, self)

  this.worldMapPosition = Vector:new(50, 50)
  this.worldMapSize = Vector:new(540, 240)
  this.mapMargin = 24

  this.activeMapSize = Vector:new(
    this.worldMapSize.x - this.mapMargin*2,
    this.worldMapSize.y - this.mapMargin*2
  )

  this.hoverIndex = nil

  this.iconOffset = math.floor(worldMapSwords:getWidth() / 2)
  this.nodes = {}
  this.shader = gShaders['worldMap']
  this.points = generate_poisson(this.activeMapSize.x, this.activeMapSize.y, 48, 30)

  this:generateMap()
  this:generateLocations()

  return this
end

function WorldMapState:enter()

end

function WorldMapState:exit()

end

function WorldMapState:update(dt)

end

function WorldMapState:handleInput(dt)
  if love.keyboard.wasPressed('space') then
    self:generateMap()
    self:generateLocations()
  end

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

function WorldMapState:generateMap()
  self.map = perlinNoise(self.worldMapSize)
  self.mapImage = love.graphics.newImage(self.map)
end

function WorldMapState:generateLocations()
  self.nodes = {}

  for k, point in pairs(self.points) do
    table.insert(self.nodes, {
      position = point
    })
  end
end

function WorldMapState:render(dt)
  love.graphics.draw(mapEdge, self.worldMapPosition.x -32, self.worldMapPosition.y-6)
  love.graphics.draw(mapEdge, self.worldMapPosition.x + self.worldMapSize.x+32, self.worldMapPosition.y-6, 0, -1, 1)
    
  love.graphics.setShader(self.shader)
  love.graphics.draw(self.mapImage, self.worldMapPosition.x, self.worldMapPosition.y)
  love.graphics.setShader()

  for k,node in pairs(self.nodes) do
    love.graphics.draw(worldMapSwords,
      self.worldMapPosition.x + self.mapMargin + node.position.x - self.iconOffset,
      self.worldMapPosition.y + self.mapMargin + node.position.y - self.iconOffset
    )
  end

  -- love.graphics.rectangle(
  --   "line",
  --   self.worldMapPosition.x + self.mapMargin,
  --   self.worldMapPosition.y + self.mapMargin,
  --   self.activeMapSize.x,
  --   self.activeMapSize.y
  -- )
end