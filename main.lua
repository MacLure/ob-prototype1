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

  function humanName()
    return random(gNames.humanNames)
  end

  function printList(list)
    local output = ""
    for i, item in ipairs(list) do
      output = output..", "..item
    end
    print(output)
  end
  
  personalNameGenerator = PersonalTitleGenerator:init()

  region = Region:init({tags={"water"}, landscape="sea"})
  -- placeNameGenerator = PlaceNameGenerator:init(region)
  -- placeNameGenerator:randomName()
  character = region:makeCharacter()
  character:printDetails()
  

  -- print "--------------------------"

  -- region2 = Region:init({tags={"forest"}, landscape="forest"})
  -- placeNameGenerator2 = PlaceNameGenerator:init(region2)
  -- placeNameGenerator2:randomName()
  -- character = region:makeCharacter()
  -- character:printDetails()


  -- print "--------------------------"
  -- factionNameGenerator = FactionNameGenerator:init()
  -- factionNameGenerator:randomName()
  -- print "--------------------------"

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
