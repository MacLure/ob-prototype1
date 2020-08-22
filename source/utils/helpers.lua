function wholeNumber(n)
  if n - math.floor(n) >= 0.5 then
    return math.ceil(n)
  else
    return math.floor(n) or math.ceil(n)
  end
  -- return n - math.floor(n) >= 0.5 and math.floor(n) or math.ceil(n)
  -- return n >= 0.0 and n-n% 1 or n-n%-1
end

function round(n) -- culd replace wholeNumber
  if n < 0 then
    return math.ceil(n - 0.5)
  else
    return math.floor(n + 0.5)
  end
end

function getIndex(table, item)
  local index={}
  for k,v in pairs(table) do
    index[v]=k
  end
  return index[item]
end

function contains(table, value)
  for index, v in ipairs(table) do
    if v == value then
      return true
    end
  end
  return false
end

function printWithShadow(text, x, y, width, alignment, color)
  local textColor = color or {1,1,1}
  love.graphics.setColor( 0,0,0,0.5 )
  love.graphics.printf( text, x+1, y+1, width, alignment )
  love.graphics.setColor( textColor, 1 )
  love.graphics.printf( text, x, y, width, alignment )
  love.graphics.setColor( 1,1,1,1 )
end


function tilesPerRow(tileWidth)
  return math.ceil(VIRTUAL_WIDTH / tileWidth)
end

function tilesPerColumn(tileHeight)
  return math.ceil(VIRTUAL_HEIGHT / tileHeight)
end

function getTile(map, rowSize, x, y)
  x = x +1
  return map[x + y * rowSize]
end

function GenerateTileIndexes(tileMap)
  local tiles = {}

  local atlas = tileMap.tilesets[1].image
  local tileWidth = tileMap.tilesets[1].tilewidth
  local tileHeight = tileMap.tilesets[1].tileheight
  local atlasWidth = atlas:getWidth()
  local atlasHeight = atlas:getHeight()
  local widthInTiles = atlasWidth / tileWidth
  local heightInTiles = atlasHeight / tileHeight
  local width = tileMap.tilesets[1].tilewidth
  local height = tileMap.tilesets[1].tileheight

  local x = 0
  local y = 0

  for j = 0, heightInTiles - 1 do
    for i = 0, widthInTiles -1 do
      table.insert(tiles, {x, y, width, height})
      x = x + width
    end
    x = 0
    y = y + height
  end
  return tiles
end

function getCharacterFrames(spritesheet, width, height)
  local characterWidth = width or 16
  local characterHeight = height or 24
  local spritesheetWidth, speritesheetHeight = spritesheet:getDimensions()
  gCharacterFrames = {}

  for i = 0, speritesheetHeight /  characterHeight - 1 do
    for j = 0, spritesheetWidth / characterWidth - 1 do
  
      local texture = love.graphics.newQuad(
        j * characterWidth,
        i * characterHeight,
        characterWidth,
        characterHeight,
        spritesheetWidth,
        speritesheetHeight)

      table.insert(gCharacterFrames, texture)
    end
  end
  return gCharacterFrames
end

function shallowClone(t)
  local clone = {}
  for k, v in pairs(t) do
    clone[k] = v
  end
  return clone
end

function deepClone(t)
  local clone = {}
  for k, v in pairs(t) do
    if type(v) == "table" then
      clone[k] = deepClone(v)
    else
      clone[k] = v
    end
  end
  return clone
end

function clamp(value, min, max)
  return math.max(min, math.min(value, max))
end

function capitalize(str)
  return (str:gsub("^%l", string.upper))
end

function shuffle(array)
  local output = { }
  local random = math.random
  
  for index = 1, #array do
    local offset = index - 1
    local value = array[index]
    local randomIndex = offset*random()
    local flooredIndex = randomIndex - randomIndex%1
    if flooredIndex == offset then
      output[#output + 1] = value
    else
      output[#output + 1] = output[flooredIndex + 1]
      output[flooredIndex + 1] = value
    end
  end

  return output
end

function random(array)
  return array[math.random(#array)]
end

function removeByValue(array, value)
  local index = getIndex(array, value)
  table.remove(array, index)
end

function mousePosition()
  return push:toGame(love.mouse.getPosition())
end