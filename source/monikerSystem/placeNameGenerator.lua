PlaceNameGenerator = Class{}

function PlaceNameGenerator:init()
  local this = {}

  setmetatable(this, self)
  return this
end

function PlaceNameGenerator:simpleDescriptor(descriptor, region)
  return placeNameGenerators[region.placeNameIndex]().." "..descriptor
end

function PlaceNameGenerator:concatenatePlaceName(descriptor, region)
  return placeNameGenerators[region.placeNameIndex]()..", the "..descriptor
end

function PlaceNameGenerator:settlementDescriptor(descriptor, region)
  return placeNameGenerators[region.placeNameIndex]()..", "..words:settlement().." of "..descriptor
end

function PlaceNameGenerator:dwelling(region)
  return placeNameGenerators[region.placeNameIndex]().."'s "..words:dwelling()
end

function PlaceNameGenerator:randomName(region)
  local pattern1 = words:settlement()
  local pattern2 = words:building()
  local pattern3 = words:verb().pp.." "..words:settlement()
  local pattern4 = words:verb().pp.." "..words:building()
  local pattern5 = random(region:substances()).name.." "..words:building()
  local pattern6 = random(region:substances()).name.." "..words:settlement()
  local pattern7 = words:color().." "..words:building()
  local pattern8 = words:color().." "..words:settlement()
  local pattern9 = words:pluralize(random(region:animals()))
  local pattern10 = words:pluralize(random(region:substances()).name)

  local possibleNames = {
    self:simpleDescriptor(pattern1, region),
    self:simpleDescriptor(pattern2, region),
    self:concatenatePlaceName(pattern3, region),
    self:concatenatePlaceName(pattern4, region),
    self:concatenatePlaceName(pattern5, region),
    self:concatenatePlaceName(pattern6, region),
    self:concatenatePlaceName(pattern7, region),
    self:concatenatePlaceName(pattern8, region),
    self:settlementDescriptor(pattern9, region),
    self:settlementDescriptor(pattern10, region)
  }
  return random(possibleNames)
end
