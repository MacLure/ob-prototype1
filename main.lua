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

  character3 = Character:init(
    gCharacterTypes.knight
  )
  character4 = Character:init(
    gCharacterTypes.mage
  )

  party = Party:init()

  unit1 = Unit:init(party)
  unit2 = Unit:init(party)

  unit1:addCharacter(character1)
  unit1:addCharacter(character2)
  unit1:assignLeader(character1)

  unit2:addCharacter(character3)
  unit2:addCharacter(character4)
  unit2:assignLeader(character4)

  party:addUnit(unit1)
  party:addUnit(unit2)

  unit2:removeCharacter(character3)

    -- print(#party.units[2].characters)
    -- print(#party.reserveCharacters)

  -- print(party.units[1].leader.name)
  -- print(party.units[2].leader.name)
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())
  print(gNames.randomJapanesePlace())

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

  panel:render(100, 100, 100, 100)

  push:apply('end')
end