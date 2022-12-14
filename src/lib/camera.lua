Camera = Class{}

function Camera:new()
  local this = {
    x = 0,
    y = 0,
    scaleX = 1,
    scaleY = 1,
    rotation = 0,
    shearX = 0,
    shearY = 0,
  }

  setmetatable(this, self)
  return this
end

-- function Camera:update()
--   self.x = wholeNumber(boundingBox.x - boundingBox.xMargin)
--   self.y = wholeNumber(boundingBox.y - boundingBox.yMargin)
-- end

function Camera:set()
  love.graphics.push()
  love.graphics.translate(gameWidth/2, gameHeight/2)
  love.graphics.rotate(-self.rotation)
  love.graphics.scale(1 / self.scaleX, 1 / self.scaleY)
  love.graphics.shear(self.shearX, self.shearY)
  love.graphics.translate(-gameWidth/2, -gameHeight/2)
  love.graphics.translate(-self.x, -self.y)
end

function Camera:unset()
  love.graphics.pop()
end

function Camera:move(dx, dy)
  self.x = self.x + (dx or 0)
  self.y = self.y + (dy or 0)
end

function Camera:rotate(dr)
  self.rotation = self.rotation + dr
end

function Camera:scale(sx, sy)
  sx = sx or 1
  self.scaleX = self.scaleX * sx
  self.scaleY = self.scaleY * (sy or sx)
end

function Camera:shear(sx, sy)
  self.shearX = self.shearX + sx
  self.shearY = self.shearY + (sy or 0)
end

function Camera:setPosition(x, y)
  self.x = x or self.x
  self.y = y or self.y
end

function Camera:setScale(sx, sy)
  self.scaleX = sx or self.scaleX
  self.scaleY = sy or self.scaleY
end
