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

  words = WordRepository:init()

  -- for i=1, 5 do
  --   print(gNames.randomJapanesePlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomChinesePlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomGreekPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomKoreanPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomNahuatlPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomGermanPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomEnglishPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomFrenchPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomArabicPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomBrazilianPlace())
  -- end  print "--------------------------"
  -- for i=1, 5 do
  --   print(gNames.randomRussianPlace())
  -- end  print "--------------------------"

  -- party:addUnit(unit2)

  -- unit2:removeCharacter(character3)

    -- print(#party.units[2].characters)
    -- print(#party.reserveCharacters)

    
  function placeName()
    local list = {
      gNames.randomJapanesePlace,
      gNames.randomChinesePlace,
      gNames.randomGreekPlace,
      gNames.randomKoreanPlace,
      gNames.randomNahuatlPlace,
      gNames.randomGermanPlace,
      gNames.randomEnglishPlace,
      gNames.randomFrenchPlace,
      gNames.randomArabicPlace,
      gNames.randomBrazilianPlace,
      gNames.randomRussianPlace
    }
    return random(list)()
  end

  function humanName()
    return random(gNames.humanNames)
  end
  

  monikerSystem = MonikerSystem:init()
  monikerSystem:randomName()
  print "--------------------------"
  factionNameGenerator = FactionNameGenerator:init()
  factionNameGenerator:randomName()
  print "--------------------------"
  placeNameGenerator = PlaceNameGenerator:init()
  placeNameGenerator:randomName()

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
