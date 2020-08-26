function love.load()
  require 'source/startup/dependencies'
  require 'source/startup/setupResolution'
  require 'source/startup/resources'
  math.randomseed(os.time())
  love.keyboard.keysPressed = {}
  debug = false
  camera = Camera:init()

  stack = StateStack:init()

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
  print "--------------------------"
  print(gNames.randomChinesePlace())
  print(gNames.randomChinesePlace())
  print(gNames.randomChinesePlace())
  print(gNames.randomChinesePlace())
  print "--------------------------"
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print(gNames.randomGreekPlace())
  print "--------------------------"
  print(gNames.randomKoreanPlace())
  print(gNames.randomKoreanPlace())
  print(gNames.randomKoreanPlace())
  print(gNames.randomKoreanPlace())
  print(gNames.randomKoreanPlace())
  print "--------------------------"
  print(gNames.randomNahuatlPlace())
  print(gNames.randomNahuatlPlace())
  print(gNames.randomNahuatlPlace())
  print(gNames.randomNahuatlPlace())
  print(gNames.randomNahuatlPlace())
  print "--------------------------"
  print(gNames.randomGermanPlace())
  print(gNames.randomGermanPlace())
  print(gNames.randomGermanPlace())
  print(gNames.randomGermanPlace())
  print(gNames.randomGermanPlace())
  print "--------------------------"
  print(gNames.randomEnglishPlace())
  print(gNames.randomEnglishPlace())
  print(gNames.randomEnglishPlace())
  print(gNames.randomEnglishPlace())
  print(gNames.randomEnglishPlace())
  print "--------------------------"
  print(gNames.randomFrenchPlace())
  print(gNames.randomFrenchPlace())
  print(gNames.randomFrenchPlace())
  print(gNames.randomFrenchPlace())
  print(gNames.randomFrenchPlace())
  print "--------------------------"
  print(gNames.randomArabicPlace())
  print(gNames.randomArabicPlace())
  print(gNames.randomArabicPlace())
  print(gNames.randomArabicPlace())
  print(gNames.randomArabicPlace())
  print "--------------------------"
  print(gNames.randomBrazilianPlace())
  print(gNames.randomBrazilianPlace())
  print(gNames.randomBrazilianPlace())
  print(gNames.randomBrazilianPlace())
  print(gNames.randomBrazilianPlace())
  
  push:resize(love.graphics.getDimensions( ))

  local map = gMaps['map1']()

  -- stack:push(BattleState:init())
  -- stack:push(EncounterState:init())
  stack:push(WorldMapState:init())
  -- stack:push(FieldState:init(nil, map))
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

function love.update(dt)
  stack:update(dt)

  if love.keyboard.wasPressed('escape') then   
    love.event.quit()
  end

  love.keyboard.keysPressed = {}
end

function love.draw()
  push:apply('start')

  stack:render(dt)

  push:apply('end')
end
