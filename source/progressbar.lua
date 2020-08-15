ProgressBar = Class{}

function ProgressBar:init(params)
  params = params or {}

  local this = {
    x = params.x or 0,
    y = params.y or 0,
    width = params.width,
    value = params.value or 0,
    maximum = params.maximum or 1,
    color = params.color or {1,1,0,1},
  }

  this.fullColor = params.fullColor or this.color
  this.normalizedValue = this.value / this.maximum

  local backgroundImageData = love.image.newImageData(1, 2)
  backgroundImageData:setPixel(0, 0, 0.2,0.2,0.2,1)
  backgroundImageData:setPixel(0, 1, 0,0,0,1)
  
  local foregroundImageData = love.image.newImageData(1, 1)
  foregroundImageData:setPixel(0, 0, unpack(this.color))
  
  this.background = love.graphics.newImage( backgroundImageData )
  this.foreground = love.graphics.newImage( foregroundImageData )

  local foregroundFullImageData = love.image.newImageData(1, 1)
  foregroundFullImageData:setPixel(0, 0, unpack(this.fullColor))
  this.foregroundFull = love.graphics.newImage( foregroundFullImageData )

  setmetatable(this, self)

  this:setValue(this.value)

  return this
end

function ProgressBar:setValue(value, max)
  self.maximum = max or self.maximum
  self.value = value
  self.normalizedValue = self.value / self.maximum
end

function ProgressBar:setPosition(x, y)
  self.x = x
  self.y = y
end

function ProgressBar:render(x, y)
  love.graphics.setColor(1,1,1,1)
  local renderX = x or self.x
  local renderY = x or self.y

  love.graphics.draw(self.background, x, y, 0, self.width, 1)
  local bar = self.foreground

  if self.value >= self.maximum then
    bar = self.foregroundFull
  end

  love.graphics.draw(bar, x, y, 0, self.width * self.normalizedValue, 1)
end