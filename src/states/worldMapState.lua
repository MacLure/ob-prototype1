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

  this.iconOffset = math.floor(worldMapSwords:getWidth() / 2)
  this.nodes = {}
  this.shader = gShaders['worldMap']

  this:generateMap()
  this:generateLocations()

  this.hoverIndex = -1

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
end

function WorldMapState:generateMap()
  self.map = perlinNoise(self.worldMapSize)
  self.mapImage = love.graphics.newImage(self.map)
end

function WorldMapState:generateLocations()
  self.points = generate_poisson(self.activeMapSize.x, self.activeMapSize.y, 48, 30)
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

  if self.hoverIndex ~= -1 then
    love.graphics.printf( self.hoverIndex,
    self.worldMapPosition.x + self.worldMapSize.x + 48, 50, 128, "center" )
  end
end