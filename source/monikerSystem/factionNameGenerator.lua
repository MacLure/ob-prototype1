FactionNameGenerator = Class{}

function FactionNameGenerator:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function FactionNameGenerator:randomName()
  local pattern1 = words:color().." "..words:pluralize(words:animal().name)
  local pattern2 = words:landscape().." "..words:pluralize(words:animal().name)
  local pattern3 = words:socialGroup().." of the "..words:animal().name
  local pattern4 = words:color().." "..words:socialGroup()
  local pattern5 = words:pluralize(words:relation()).." of the "..words:landscape()
  local pattern6 = words:color().." "..words:pluralize(words:attribute())
  local pattern7 = words:substance().." "..words:pluralize(words:animal().name)
  local pattern8 = words:verb().pp
  local pattern9 = "un"..words:verb().pp
  local pattern10 = words:substance().." "..words:pluralize(words:verb().doer)

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
