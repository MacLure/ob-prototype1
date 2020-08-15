Panel = Class{}

function Panel:init(params, dimensions, color)
  local this = {
    quads = {},
    tiles = {},
    gradientData = love.image.newImageData(1, 2),
    name = dimensions,
    color = color or {0.05,0.05,0.5}
  }
  if params.texture then
    this.texture = params.texture
  else 
    this.texture = gPanels['panel']
  end

  this.textureWidth = this.texture:getWidth()
  this.textureHeight = this.texture:getHeight()
  this.tileSize = this.texture:getWidth() / 3

  this.gradientData:setPixel(0, 0, this.color ,1)
  this.gradientData:setPixel(0, 1, 0,0,0,1)
  this.gradient = love.graphics.newImage(this.gradientData)
  this.gradient:setFilter("linear")

  for i = 1, this.textureHeight / this.tileSize do
    for j = 1, this.textureWidth / this.tileSize do
      local quad = love.graphics.newQuad(
        (j-1) * this.tileSize,
        (i-1) * this.tileSize,
        this.tileSize,
        this.tileSize,
        this.texture:getDimensions()
      )
      table.insert(this.quads, quad)
    end
  end

  setmetatable(this, self)
  
  return this
end

function Panel:expandFromCenter(x, y, width, height, scale)
  local scale = scale or 1
  local centerX = x + width / 2
  local centerY = y + height / 2
  local x = centerX - width / 2 * scale
  local y = centerY - height / 2 * scale
  local width = width * scale
  local height = height * scale
  return x, y, width, height
end

function Panel:render(x, y, width, height)
  love.graphics.setColor(1,1,1,1)
  -- FILL
  love.graphics.draw(
    self.gradient, 
    self.quads[5],
    x + self.tileSize-2,
    y + self.tileSize-2,
    0,
    (width - self.tileSize+4) / self.tileSize,
    (height - self.tileSize+4) / self.tileSize
  )

  -- SIDES
  love.graphics.draw(
    self.texture,
    self.quads[2],
    x + self.tileSize,
    y,
    0,
    (width - self.tileSize) / self.tileSize,
    1)

  love.graphics.draw(
    self.texture,
    self.quads[4],
    x,
    y + self.tileSize,
    0,
    1,
    (height - self.tileSize) / self.tileSize
  )

  love.graphics.draw(
    self.texture,
    self.quads[6],
    x + width,
    y + self.tileSize,
    0,
    1,
    (height - self.tileSize) / self.tileSize
  )

  love.graphics.draw(
    self.texture,
    self.quads[8],
    x + self.tileSize,
    y + height,
    0,
    (width - self.tileSize) / self.tileSize,
    1)

  -- CORNERS
  love.graphics.draw(self.texture, self.quads[1], x, y)
  love.graphics.draw(self.texture, self.quads[3], x + width, y)
  love.graphics.draw(self.texture, self.quads[7], x, y + height)
  love.graphics.draw(self.texture, self.quads[9], x + width, y + height)          
end

function Panel:setColor(color)
  for k, v in ipairs(self.tiles) do
      v.color = color
  end
end