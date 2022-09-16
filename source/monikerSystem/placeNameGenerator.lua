PlaceNameGenerator = Class{}

-- Realm Name
-- Region Name
-- Settlement Name
-- Dwelling Name
-- Geographical area name

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
  return placeNameGenerators[region.placeNameIndex]()..", "..words:settlement().name.." of "..descriptor
end

function PlaceNameGenerator:dwelling(region)
  return placeNameGenerators[region.placeNameIndex]().."'s "..words:dwelling()
end

function PlaceNameGenerator:randomName(region)
  local pattern1 = words:settlement().name
  local pattern2 = words:building().name
  local pattern3 = words:verb().pp.." "..words:settlement().name
  local pattern4 = words:verb().pp.." "..words:building().name
  local pattern5 = random(region:substances()).name.." "..words:building().name
  local pattern6 = random(region:substances()).name.." "..words:settlement().name
  local pattern7 = words:color().name.." "..words:building().name
  local pattern8 = words:color().name.." "..words:settlement().name
  local pattern9 = words:pluralize(random(region:animals()).name)
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


function PlaceNameGenerator:settlementName(params)
  local region = params.region
  local settlementType = params.settlementType.name
  local name = params.name

  local descriptors = {}
  for k,v in pairs(words.settlementDescriptions) do
    if containsFromArray(v.tags, {settlementType}) then
      v.name = k
      table.insert(descriptors, v)
    end
  end


  local possibleNames = {
    -- name..", the "..words:verb().pp.." "..settlementType,
    -- name..", the "..random(region:substances()).name.." "..settlementType,
    -- name..", the "..words:color().name.." "..settlementType,
    -- name..", the "..words:pluralize(random(region:animals()).name).." "..settlementType,
    -- name..", the "..words:pluralize(random(region:substances()).name).." "..settlementType,

    -- name..", "..settlementType.." of "..words:pluralize(random(region:animals()).name),
    -- name..", "..settlementType.." of "..words:pluralize(random(region:substances()).name),
    -- name..", "..settlementType.." of "..words:verb().pp.." "..words:pluralize(random(region:animals()).name),
    -- name..", "..settlementType.." of "..words:verb().pp.." "..words:pluralize(random(region:substances()).name),

    -- name..", "..words:verb().pp.." "..settlementType.." of "..words:pluralize(random(region:animals()).name),

    name..", "..random(descriptors).name.." "..settlementType,
    name..", "..region.landscape.." "..settlementType,

    name..", "..random(descriptors).name.." "..settlementType.." of "..random(region:substances()).name,
    name..", "..random(descriptors).name.." "..settlementType.." of "..words:pluralize(random(region:animals()).name),

    name..", "..random(descriptors).name.." "..settlementType.." of "..words:pluralize(random(region:animals()).name),

    name..", "..settlementType.." of "..words:pluralize(WordRepository:position().name),
  }

  return random(possibleNames)
end


function PlaceNameGenerator:wildLocationName(params)
  local region = params.region
  local name = params.name

  local possibleNames = {
    name..", "..name.." "..world:wildLocationName().name,
  }

  return random(possibleNames)
end

