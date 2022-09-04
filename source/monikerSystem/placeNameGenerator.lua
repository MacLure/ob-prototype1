PlaceNameGenerator = Class{}

function PlaceNameGenerator:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function PlaceNameGenerator:randomName()
  print(placeName().." "..words:settlement())
  print(placeName().." "..words:building())
end
