Dice = Class{}

function Dice:init(diceStr)
  local this = {
    dice = {}
  }
    
  setmetatable(this, self)
  this:parse(diceStr)
  return this
end

function Dice:parse(diceStr)
  local len = string.len(diceStr)
  local index = 1
  local allDice = {}
  while index <= len do
    local die
    die, index = self:parseDie(diceStr, index)
    table.insert(self.dice, die)
    index = index + 1 -- eat ' '
  end
end

function Dice:parseDie(diceStr, i)
  local rolls
  rolls, i = self:parseNumber(diceStr, i)
  i = i + 1 -- Move past the 'D'
  local sides
  sides, i = self:parseNumber(diceStr, i)
  if i == string.len(diceStr) or
    string.sub(diceStr, i, i) == ' ' then
    return { rolls, sides, 0 }, i
  end
  if string.sub(diceStr, i, i) == '+' then
    i = i + 1 -- move past the '+'
    local plus
    plus, i = self:parseNumber(diceStr, i)
    return { rolls, sides, plus }, i
  end
end

function Dice:parseNumber(str, index)
  local isNum =
  {
    ['0'] = true,
    ['1'] = true,
    ['2'] = true,
    ['3'] = true,
    ['4'] = true,
    ['5'] = true,
    ['6'] = true,
    ['7'] = true,
    ['8'] = true,
    ['9'] = true
  }
  local len = string.len(str)
  local subStr = {}
  for i = index, len do
    local char = string.sub(str, i, i)
    if not isNum[char] then
      return tonumber(table.concat(subStr)), i
    end
    table.insert(subStr, char)
  end
  return tonumber(table.concat(subStr)), len
end

-- Notice this uses a '.' not a ':' meaning the function can be called
-- without having a class instance. e.g Dice.RollDie(1, 6) is ok
function Dice.rollDie(rolls, faces, modifier)
  local total = 0
  for i = 1, rolls do
    total = total + math.random(1, faces)
  end
  return total + (modifier or 0)
end

function Dice:roll()
  local total = 0
  for _, die in ipairs(self.dice) do
    total = total + Dice.rollDie(unpack(die))
  end
  return total
end