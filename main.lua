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
    gCharacterTypes.knight
  )
  character3 = Character:init(
    gCharacterTypes.cleric
  )
  character4 = Character:init(
    gCharacterTypes.dragon
  )
  character5 = Character:init(
    gCharacterTypes.ninja
  )


  character6 = Character:init(
    gCharacterTypes.knight
  )
  character7 = Character:init(
    gCharacterTypes.knight
  )
  character8 = Character:init(
    gCharacterTypes.cleric
  )
  character9 = Character:init(
    gCharacterTypes.dragon
  )
  character10 = Character:init(
    gCharacterTypes.ninja
  )

  party = Party:init()

  unit1 = Unit:init(party)
  unit1:addCharacter(character1)
  unit1:addCharacter(character2)
  unit1:addCharacter(character3)
  unit1:addCharacter(character4)
  unit1:addCharacter(character5)
  unit1:assignLeader(character1)

  unit2 = Unit:init(party)
  unit2:addCharacter(character6)
  unit2:addCharacter(character7)
  unit2:addCharacter(character8)
  unit2:addCharacter(character9)
  unit2:addCharacter(character10)
  unit2:assignLeader(character6)

  party:addUnit(unit1)
  -- party:addUnit(unit2)

  -- unit2:removeCharacter(character3)

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

  push:resize(love.graphics.getDimensions( ))
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

  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight2'], 290, 030)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight2'], 250, 050)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric2'], 360, 070)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon2'], 300, 080)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja2'], 275, 80)

  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], 140, 130)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], 100, 150)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric1'], 210, 170)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon1'], 150, 180)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja1'], 125, 180)

  panel:render(300, 150, 200, 110)

  local ySpacing = 0
  love.graphics.setFont(gFonts['default'])
  for i in ipairs(party.units[1].characters) do
    love.graphics.draw(icons, party.units[1].characters[i].icon, 310, 160 + ySpacing)
    printWithShadow(party.units[1].characters[i].name, 332, 160 + ySpacing, 100, "left")
    ySpacing = ySpacing + 20
  end

  push:apply('end')
end