-- STRING HELPERS

function capitalize(str)
  return (str:gsub("^%l", string.upper))
end

-- NUMBER HELPERS

function wholeNumber(n)
  if n - math.floor(n) >= 0.5 then
    return math.ceil(n)
  else
    return math.floor(n) or math.ceil(n)
  end
  -- return n - math.floor(n) >= 0.5 and math.floor(n) or math.ceil(n)
  -- return n >= 0.0 and n-n% 1 or n-n%-1
end

function clamp(value, min, max)
  return math.max(min, math.min(value, max))
end

function round(n) -- could replace wholeNumber
  if n < 0 then
    return math.ceil(n - 0.5)
  else
    return math.floor(n + 0.5)
  end
end

function randomFloat(min, max, precision)
	local range = max - min
	local offset = range * math.random()
	local unrounded = min + offset

	if not precision then
		return unrounded
	end

	local powerOfTen = 10 ^ precision
	return math.floor(unrounded * powerOfTen + 0.5) / powerOfTen
end

-- INPUT HELPERS

function mousePosition()
  return Push:toGame(love.mouse.getPosition())
end

-- TABLE HELPERS

function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

function getIndex(table, item)
  local index={}
  for k,v in pairs(table) do
    index[v]=k
  end
  if #index then return -1 end
  return index[item]
end

function cloned(table)
  clonedTable = {}
  for k, v in ipairs(table) do
      b[k] = v
  end
  return clonedTable
end


function contains(table, value)
  for index, v in ipairs(table) do
    if v == value then
      return true
    end
  end
  return false
end

function order(table)
  local function compare(a,b)
    return a[1] < b[1]
  end
  
  return table.sort(items, compare)
end

function containsFromArray(tableToCheck, tableOfValues)
  for i, v1 in ipairs(tableToCheck) do
    for j, v2 in ipairs(tableOfValues) do
      if v1 == v2 then
        return true
      end
    end
  end
  return false
end

function filter(table, filterFunction)
  local out = {}

  for k, v in pairs(table) do
    if filterFunction(v, k, table) then out[k] = v end
  end

  return out
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


function printWithShadow(text, x, y, width, alignment, color)
  local textColor = color or {1,1,1}
  love.graphics.setColor( 0,0,0,0.5 )
  love.graphics.printf( text, x+1, y+1, width, alignment )
  love.graphics.setColor( textColor, 1 )
  love.graphics.printf( text, x, y, width, alignment )
  love.graphics.setColor( 1,1,1,1 )
end

function tilesPerRow(tileWidth)
  return math.ceil(gameWidth / tileWidth)
end

function tilesPerColumn(tileHeight)
  return math.ceil(gameHeight / tileHeight)
end

function getTile(map, rowSize, x, y)
  x = x +1
  return map[x + y * rowSize]
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

-- function distance(x1,y1,x2,y2)
--   return math.sqrt((x2 - x1) ^ 2 + (y2 - y1) ^ 2)
-- end

function distance(p1, p2)
    return math.sqrt(math.pow(p2.x-p1.x,2) + math.pow(p2.y-p1.y,2))
end

function randomFromKvp(kvp)
  local randomIndex = math.random(1,tablelength(kvp)-1)
  local counter = 1
  for k, v in pairs(kvp) do
    if counter == randomIndex then
      v.name = k
      return v
    end
    counter = counter+1
  end
end

function split(string)
  local chars = {}
  for c in string.gmatch(string, ".") do
    chars[#chars+1] = c
  end
  return chars
end

function mixColors(color1, color2, strength)
  local newColor = {}
  if strength == nil then strength = 0.5 end
  if color1[4] == nil then color1[4] = 1 end
  if color2[4] == nil then color2[4] = 1 end

  newColor[1] = color1[1] * (1 - strength) + color2[1] * strength
  newColor[2] = color1[2] * (1 - strength) + color2[2] * strength
  newColor[3] = color1[3] * (1 - strength) + color2[3] * strength
  newColor[4] = color1[4] * (1 - strength) + color2[4] * strength
  return newColor
end
