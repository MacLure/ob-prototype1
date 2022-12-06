FieldState = Class{}

function FieldState:new(stack, mapDef)
  local this = {
    mapDef = mapDef
  }
  
  this.map = Map:new(this.mapDef)


  setmetatable(this, self)
  return this
end

function FieldState:enter()

end

function FieldState:exit()

end

function FieldState:update(dt)
end

function FieldState:handleInput(dt)
  if love.keyboard.isDown("a") then
    camera:scale(1.1, 1.1)
  end
  if love.keyboard.isDown("s") then
    camera:scale(0.9, 0.9)
  end

  if love.keyboard.isDown("up") then
    camera.y = camera.y - 100 * dt
  end

  if love.keyboard.isDown("down") then
    camera.y = camera.y + 100 * dt
  end

  if love.keyboard.isDown("left") then
    camera.x = camera.x - 100 * dt
  end

  if love.keyboard.isDown("right") then
    camera.x = camera.x + 100 * dt
  end
end

function FieldState:render()
  camera:set()

  self.map:render()

  camera:unset()
end