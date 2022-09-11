function love.load()
  require 'source/startup/dependencies'
  require 'source/startup/setupResolution'
  require 'source/startup/resources'
  math.randomseed(os.time())
  love.keyboard.keysPressed = {}
  debug = false
  camera = Camera:init()

  stack = StateStack:init()

  words = WordRepository:init()
    
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

  function humanName(gender)
    if gender == "male" then
      return random(gNames.humanMaleNames)
    else
      return random(gNames.humanFemaleNames)
    end
  end

  function printList(list)
    local output = ""
    for i, item in ipairs(list) do
      if #output < 1 then
        output = item
      else
        output = output..", "..item
      end
    end
    print(output)
  end
  
  personalNameGenerator = PersonalTitleGenerator:init()
  placeNameGenerator = PlaceNameGenerator:init()
  factionNameGenerator = FactionNameGenerator:init()

  print("------------------------------------------------------")
  region = Region:init({tags={"water"}, landscape="sea"})
  print("------------ "..region.placeName..", "..region.landscape.." region --------------")
  printList(region:animals())
  -- printList(wordNames(region:substances()))
  printList(region:golems())

  character = region:makeCharacter()
  character:printDetails()
  factionNameGenerator:randomName(region)

  location = region:makeLocation()
  location:printDetails()

  print("-------------------------------------------------------")
  region2 = Region:init({tags={"forest"}, landscape="forest"})
  print("------------ "..region2.placeName..", "..region2.landscape.." region --------------")
  printList(region2:animals())
  printList(region2:golems())

  character2 = region2:makeCharacter()
  character2:printDetails()
  factionNameGenerator:randomName(region2)

  love.event.quit()

  push:resize(love.graphics.getDimensions( ))

  stack:push(WorldMapState:init())
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

function wordNames(list)
  local names = {}
  for k,v in pairs(list) do
    table.insert(names, v.name)
  end
  return names
end