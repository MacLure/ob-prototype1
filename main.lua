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
    
  placeNameGenerators = {
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

  regionParams = {tags={"water"}, landscape="sea"}
  region2Params = {tags={"forest"}, landscape="forest"}
  printRegionDetails(regionParams)
  printRegionDetails(region2Params)

  love.event.quit()

  push:resize(love.graphics.getDimensions( ))

  stack:push(WorldMapState:init())
end

function printRegionDetails(regionParams)
  local region = Region:init(regionParams)

  print("------------ "..region.placeName..", "..region.landscape.." region --------------")
  print("")
  print("ANIMALS:")
  printList(region:animals())
  print("")
  print("GOLEMS:")
  printList(region:golems())
  print("")
  print("CHARACTERS:")
  local character = region:makeCharacter()
  character:printDetails()
  print("FACTIONS:")
  print(factionNameGenerator:randomName(region))
  print("")
  print("LOCATIONS:")
  local location = region:makeLocation()
  location:printDetails()
  print("")
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