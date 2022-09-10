PlaceNameGenerator = Class{}

function PlaceNameGenerator:init()
  local this = {}

  setmetatable(this, self)
  return this
end

function PlaceNameGenerator:simpleDescriptor(descriptor)
  return placeName().." "..descriptor
end

function PlaceNameGenerator:concatenatePlaceName(descriptor)
  return placeName()..", the "..descriptor
end

function PlaceNameGenerator:settlementDescriptor(descriptor)
  return placeName()..", "..words:settlement().." of "..descriptor
end

function PlaceNameGenerator:dwelling(dwelling)
  return humanName().."'s "..words:dwelling()
end

function PlaceNameGenerator:randomName(region)
  local pattern1 = words:settlement()
  local pattern2 = words:building()

  print(self:simpleDescriptor(pattern1))
  print(self:simpleDescriptor(pattern2))

  local pattern3 = words:verb().pp.." "..words:settlement()
  local pattern4 = words:verb().pp.." "..words:building()
  local pattern5 = random(region:substances(words:substances())).." "..words:building()
  local pattern6 = random(region:substances(words:substances())).." "..words:settlement()
  local pattern7 = words:color().." "..words:building()
  local pattern8 = words:color().." "..words:settlement()

  print(self:concatenatePlaceName(pattern3))
  print(self:concatenatePlaceName(pattern4))
  print(self:concatenatePlaceName(pattern5))
  print(self:concatenatePlaceName(pattern6))
  print(self:concatenatePlaceName(pattern7))
  print(self:concatenatePlaceName(pattern8))

  local pattern9 = words:pluralize(random(region:animals(words:animals())))
  local pattern10 = words:pluralize(random(region:substances(words:substances())))

  print(self:settlementDescriptor(pattern9))
  print(self:settlementDescriptor(pattern10))
end
