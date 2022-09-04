PlaceNameGenerator = Class{}

function PlaceNameGenerator:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function PlaceNameGenerator:randomName()
  print(placeName().." "..words:settlement())
  print(placeName().." "..words:building())

  print(placeName()..", the "..words:verb().pp.." "..words:settlement())
  print(placeName()..", the "..words:verb().pp.." "..words:building())

  print(placeName()..", the "..words:substance().." "..words:building())
  print(placeName()..", the "..words:substance().." "..words:settlement())

  print(placeName()..", the "..words:color().." "..words:building())
  print(placeName()..", the "..words:color().." "..words:settlement())

  print(placeName()..", city of "..words:pluralize(words:animal()))
  print(placeName()..", city of "..words:pluralize(words:substance()))

  print(humanName().."'s "..words:dwelling())
end
