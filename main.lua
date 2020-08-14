function love.load()
  require 'source/startup/dependencies'
  require 'source/startup/setupResolution'
  require 'source/startup/resources'
  math.randomseed(os.time())
  love.keyboard.keysPressed = {}
  debug = false

  panel = Panel:init(
    {},
    {
      x= 100,
      y= 100,
      width= 100,
      height= 100
    }
  )

  character1 = Character:init(
    gCharacterTypes.knight
  )

  character2 = Character:init(
    gCharacterTypes.mage
  )

  unit = Unit:init()
  unit:addCharacter(character1)
  unit:addCharacter(character2)
  unit:assignLeader(character1)

  print(unit.characters[1].name, unit.characters[1].class)
  print(unit.characters[2].name, unit.characters[2].class)
  print(unit:remainingCapacity())
  print(unit.leader.name)


end

function love.keypressed(key)
  love.keyboard.keysPressed[key] = true
end

function love.keyboard.wasPressed(key)
  if love.keyboard.keysPressed[key] then
    return true
  else
    return false
  end
end

function love.update()
  if love.keyboard.wasPressed('escape') then   
    love.event.quit()
  end

  love.keyboard.keysPressed = {}
end

function love.draw()
  push:apply('start')

  love.graphics.draw(icons, gIcons['knight'], VIRTUAL_WIDTH/2, VIRTUAL_HEIGHT/2)

  panel:render(100, 100, 100, 100)

  push:apply('end')
end