FactionNameGenerator = Class{}

function FactionNameGenerator:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function FactionNameGenerator:randomName()
  print("the "..words:color().." "..words:pluralize(words:animal()))
  print("the "..words:landscape().." "..words:pluralize(words:animal()))

  print("the "..words:relationType().." of the "..words:animal())
  print("the "..words:color().." "..words:relationType())
  print("the "..words:relation().."s of the "..words:landscape())
  print("the "..words:color().." "..words:pluralize(words:attribute()))
  print("the "..words:substance().." "..words:pluralize(words:animal()))

  print("the "..words:verb().pp)
  print("the ".."un"..words:verb().pp)
  print("the "..words:substance().." "..words:pluralize(words:verb().doer))
end
