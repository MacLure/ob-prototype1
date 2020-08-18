function love.load()
  require 'source/startup/dependencies'
  require 'source/startup/setupResolution'
  require 'source/startup/resources'
  math.randomseed(os.time())
  love.keyboard.keysPressed = {}
  debug = false

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

  -- stack:push(BattleState:init())
  -- stack:push(EncounterState:init())
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

function love.update()
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

-- function noise( x,  y,  z) 
--   local X = math.floor(x % 255)
--   local Y = math.floor(y % 255)
--   local Z = math.floor(z % 255)
--   x = x - math.floor(x)
--   y = y - math.floor(y)
--   z = z - math.floor(z)
--   local u = fade(x)
--   local v = fade(y)
--   local w = fade(z) 
  
--   A   = p[X  ]+Y
--   AA  = p[A]+Z
--   AB  = p[A+1]+Z
--   B   = p[X+1]+Y
--   BA  = p[B]+Z
--   BB  = p[B+1]+Z

--   return lerp(w, lerp(v, lerp(u, grad(p[AA  ], x  , y  , z   ), 
--                                  grad(p[BA  ], x-1, y  , z   )), 
--                          lerp(u, grad(p[AB  ], x  , y-1, z   ), 
--                                  grad(p[BB  ], x-1, y-1, z   ))),
--                  lerp(v, lerp(u, grad(p[AA+1], x  , y  , z-1 ),  
--                                  grad(p[BA+1], x-1, y  , z-1 )),
--                          lerp(u, grad(p[AB+1], x  , y-1, z-1 ),
--                                  grad(p[BB+1], x-1, y-1, z-1 )))
--   )
-- end


-- function fade (t)
--   return t * t * t * (t * (t * 6 - 15) + 10)
-- end


-- function lerp(t,a,b)
--   return a + t * (b - a)
-- end


-- function grad(hash,x,y,z)
--   local h = hash % 16
--   local u 
--   local v 
  
--   if (h<8) then u = x else u = y end
--   if (h<4) then v = y elseif (h==12 or h==14) then v=x else v=z end
--   local r
  
--   if ((h%2) == 0) then r=u else r=-u end
--   if ((h%4) == 0) then r=r+v else r=r-v end
--   return r
-- end


-- p = {}
-- local permutation = { 151,160,137,91,90,15,
--   131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
--   190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
--   88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
--   77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
--   102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
--   135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
--   5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
--   223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
--   129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
--   251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
--   49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
--   138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180
-- }

-- for i=0,255 do
--   p[i] = permutation[i+1]
--   p[256+i] = permutation[i+1]
-- end

-- local gridSize = 20
-- local mapScale = 5
-- local offsetX = 2
-- local offsetY = 1
-- local perlinMap = love.image.newImageData(gridSize,gridSize)

-- -- for x = 1, gridSize-1 do
-- --   for y = 1, gridSize-1 do
-- --     local pixelValue = love.math.noise( x + love.math.random(), y + love.math.random() )
-- --     perlinMap:setPixel(x, y, pixelValue,pixelValue,pixelValue)
-- --   end
-- -- end

-- -- return love.graphics.newImage(perlinMap)


-- -- generate noise
-- for x=1,gridSize-1 do
--   for y=1,gridSize-1 do
--     local value = noise(x/mapScale + offsetX, y/mapScale + offsetY,0) + 0.5
--     perlinMap:setPixel(x, y, value,value,value)
--     print(value)
--   end
-- -- end 
-- end
-- function love.draw()
-- love.graphics.draw(love.graphics.newImage(perlinMap), 10, 10,0,10,10)
-- end