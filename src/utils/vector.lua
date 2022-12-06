Vector = Class{}

function Vector:new(x, y)
  local this = {}
  setmetatable(this, self)

  this.x = x
  this.y = y
  
  return this
end

function Vector:clone()
  return Vector:new(self.x, self.y)
end

function Vector:table()
  return self.x, self.y
end

function Vector:magnitude()
  return math.sqrt(self.x^2 + self.y^2)
end

function Vector:radians()
  return math.atan2(self.x, -self.y)
end

function Vector:direction()
  return Vector:new(
    math.sin(self.radians),
    -math.cos(self.radians)
  )
end

function Vector:directionTo(other)
  local angle = math.atan2(
    other.x - self.x,
    self.y - other.y
  )

  return Vector:new(
    math.sin(angle),
    -math.cos(angle)
  )
end

function Vector:add(vector)
  return Vector:new(
    self.x + vector.x,
    self.y + vector.y
  )
end

function Vector:subtract(vector)
  return Vector:new(
    self.x - vector.x,
    self.y - vector.y
  )
end

function Vector:multiply(multiplier)
  return Vector:new(
    self.x * multiplier,
    self.y * multiplier
  )
end

function Vector:divide(divisor)
  assert(divisor ~= 0, "divisor can't be 0") 

  return Vector:new(
    self.x / divisor,
    self.y / divisor
  )
end

function Vector:unit()
  local mag = self:magnitude()
  return self:divide(mag)
end

function Vector:reset(x, y)
  self.x = x
  self.y = y
end

function Vector:distanceFrom(vector)
  return math.sqrt((self.x-vector.x)^2 + (self.y-vector.y)^2)
end
