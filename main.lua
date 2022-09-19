function love.load()
  require 'source/startup/dependencies'
  require 'source/startup/setupResolution'
  require 'source/startup/resources'
  math.randomseed(os.time())
  love.keyboard.keysPressed = {}

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

  characterNameGenerator = CharacterNameGenerator:init()
  placeNameGenerator = PlaceNameGenerator:init()

  local regions = {
    {tags={"sea"}, landscape="sea"},
    {tags={"forest"}, landscape="forest"},
    {tags={"desert"}, landscape="desert"}
  }

  for i, region in pairs(regions) do
    printRegionDetails(region)
  end

  love.event.quit()
end

function printRegionDetails(regionParams)
  local region = Region:init(regionParams)

  region:printHeadline()
  print("")
  print("ANIMALS:")
  local animals = {}
  for k, v in pairs(region.animals) do
    table.insert(animals, v.name)
  end
  printList(animals)
  print("")
  print("GOLEMS:")
  printList(region.golems)
  print("")
  print("FACTIONS:")
  for k, faction in pairs(region.factions) do
    print(faction.name)
  end
  print("")
  region:printCharacters()
  print("")
  region:printLocations()
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
  -- stack:update(dt)

  if love.keyboard.wasPressed('escape') then   
    love.event.quit()
  end

  love.keyboard.keysPressed = {}
end

function love.draw()

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