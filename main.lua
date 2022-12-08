function love.load()
  math.randomseed(os.time())
  love.graphics.setDefaultFilter('nearest', 'nearest')
  
  require 'dependencies'

  displayManager = DisplayManager:new()
  AudioManager = AudioManager:new()
  Event = EventSystem:new()

  displayManager:setDisplay()
  
  gameStateMachine = StateMachine:new {
    ['battle'] = function() return BattleState:new() end,
    ['encounter'] = function() return EncounterState:new() end,
    ['field'] = function() return FieldState:new() end,
    ['worldmap'] = function() return WorldMapState:new() end,
  }

  gameStateMachine:change('worldmap')

  love.keyboard.keysPressed = {}

  words = WordRepository:new()
    
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

  characterNameGenerator = CharacterNameGenerator:new()
  placeNameGenerator = PlaceNameGenerator:new()

  local regions = {
    {landscape="sea"},
    {landscape="forest"},
    {landscape="desert"},
    {landscape="plains"}
  }

  -- for i, region in pairs(regions) do
  --   printRegionDetails(region)
  -- end

  -- love.event.quit()
end

function printRegionDetails(regionParams)
  local region = Region:new(regionParams)

  region:printHeadline()
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
  if love.keyboard.wasPressed('escape') then   
    love.event.quit()
  end

  gameStateMachine:update(dt)

  love.keyboard.keysPressed = {}
end

function love.resize(w, h)
  Push:resize(w, h)
end

function love.draw()
  Push:apply('start')
  gameStateMachine:render()
  Push:apply('end')
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