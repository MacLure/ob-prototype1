FactionNameGenerator = Class{}

function FactionNameGenerator:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function FactionNameGenerator:animals(region)
  local regionAnimals = region:animals()
  return regionAnimals
end

function FactionNameGenerator:landscape(region)
  local landscape = region.landscape
  return landscape
end

function FactionNameGenerator:randomName(region)
  local animals = self:animals(region)
  local landscape = self:landscape(region)

  local pattern1 = words:color().." "..words:pluralize(random(animals))
  local pattern2 = landscape.." "..words:pluralize(random(animals))
  local pattern3 = words:socialGroup().." of the "..random(animals)
  local pattern4 = words:color().." "..words:socialGroup()
  local pattern5 = words:pluralize(words:relation()).." of the "..landscape
  local pattern6 = words:color().." "..words:pluralize(words:attribute())
  local pattern7 = words:substance().name.." "..words:pluralize(random(animals))
  local pattern8 = words:verb().pp
  local pattern9 = "un"..words:verb().pp
  local pattern10 = words:substance().name.." "..words:pluralize(words:verb().doer)

  local possibleNames = {
    "the ".. pattern1,
    "the ".. pattern2,
    "the ".. pattern3,
    "the ".. pattern4,
    "the ".. pattern5,
    "the ".. pattern6,
    "the ".. pattern7,
    "the ".. pattern8,
    "the ".. pattern9,
    "the ".. pattern10
  }

  return random(possibleNames)
end
