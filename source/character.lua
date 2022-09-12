Character = Class{}

function Character:init(params)
  local this = {}
  setmetatable(this, self)

  this.region = params.region
  this.stats = {
    strength = math.random(1,10),
    int = math.random(1,10),
    faith = math.random(1,10),
  }
  this.alignment = math.random(1,10)
  this.gender = this:randomGender()

  this.CharacterName = humanName(this.gender)
  this.className = this:class()
  this.name = personalNameGenerator:randomName(this)

  return this
end

function Character:printDetails()
  print(self.name)
  print(self.gender.." "..self.className)

  printTable(self.stats)
  -- printTable(self:orderedTraits())
  -- print(self:orderedTraits()[1], self.stats[self:orderedTraits()[1]])
end

function Character:orderedTraits()
  return getKeysSortedByValue(self.stats, sortByValue)
end

function Character:randomGender()
  if math.random(1,2) == 1 then
    return "male"
  end
  return "female"
end

function Character:class()
  local classes = {
    ["strength"] = "knight",
    ["int"] = "mage",
    ["faith"] = "cleric",
  }


  -- knight: str > 7, int > 4
  -- brute: str > 7, int < 5
  -- scholar: int > 5 < 7
  -- mage int > 7
  -- hunter:
  -- cleric: faith 

  return(classes[self:orderedTraits()[1]])
end




function sortByValue(a,b)
  return a > b
end

function getKeysSortedByValue(tbl, sortFunction)
  local keys = {}
  for key in pairs(tbl) do
    table.insert(keys, key)
  end

  table.sort(keys, function(a, b)
    return sortFunction(tbl[a], tbl[b])
  end)

  return keys
end
