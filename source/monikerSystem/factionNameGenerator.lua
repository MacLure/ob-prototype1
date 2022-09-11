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

  print("the ".. pattern1)
  print("the ".. pattern2)
  print("the ".. pattern3)
  print("the ".. pattern4)
  print("the ".. pattern5)
  print("the ".. pattern6)
  print("the ".. pattern7)
  print("the ".. pattern8)
  print("the ".. pattern9)
  print("the ".. pattern10)
end
