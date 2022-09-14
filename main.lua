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

  regionParams = {tags={"sea"}, landscape="sea"}
  printRegionDetails(regionParams)
  region2Params = {tags={"forest"}, landscape="forest"}
  printRegionDetails(region2Params)
  region3Params = {tags={"desert"}, landscape="desert"}
  printRegionDetails(region3Params)

  print("------------------------------")

  for i=1, 20, 1 do
    print(words:compoundWord())
  end

  love.event.quit()

  push:resize(love.graphics.getDimensions( ))

  stack:push(WorldMapState:init())
end

function printRegionDetails(regionParams)
  local region = Region:init(regionParams)

  print("-----------------------------------------------------------------")
  print("------------ "..region.placeName..", "..region.regionStatement.." in the "..region.landscape.." --------------")
  print("-----------------------------------------------------------------")

  print("integratedness: "..region.integratedness, "population: "..region.population, "prosperity: "..region.prosperity)
  print("topology: "..region.topology, "temperature: "..region.temperature, "vegetation: "..region.vegetation)

  print("")
  print("ANIMALS:")
  local animals = {}
  for k, v in pairs(region:animals()) do
    table.insert(animals, v.name)
  end
  printList(animals)
  print("")
  print("GOLEMS:")
  printList(region:golems())
  print("")
  print("FACTIONS:")
  local faction1 = region:makeFaction()
  faction1:printDetails()
  print("in conflict with")
  local faction2 = region:makeFaction()
  faction2:printDetails()
  print("")
  print("CHARACTERS:")
  local character = region:makeCharacter()
  character:printDetails()
  print("LOCATIONS:")
  if math.random(1,2) == 1 then
    occupyingFaction = faction1
  else
    occupyingFaction = faction2
  end
  local location = region:makeLocation()
  location:printDetails()
  print("occupied by ".. occupyingFaction.name)
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