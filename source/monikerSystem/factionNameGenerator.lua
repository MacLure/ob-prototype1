FactionNameGenerator = Class{}

function FactionNameGenerator:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function FactionNameGenerator:animals(region)
  local regionAnimals = region.animals
  return regionAnimals
end

function FactionNameGenerator:landscape(region)
  local landscape = region.landscape
  return landscape
end

function FactionNameGenerator:randomName(region)
  local animals = self:animals(region)
  local landscape = self:landscape(region)

  local possibleNames = {
    -- words:color().name.." "..words:pluralize(random(animals).name),
    -- landscape.." "..words:pluralize(random(animals).name),
    -- words:socialGroup().name.." of the "..random(animals).name,
    -- words:color().name.." "..words:socialGroup().name,
    -- words:pluralize(words:relation().name).." of the "..landscape,
    -- words:color().name.." "..words:pluralize(words:attribute().name),
    -- words:substance().name.." "..words:pluralize(random(animals).name),
    -- words:verb().pp,
    -- "un"..words:verb().pp,
    -- words:substance().name.." "..words:pluralize(words:doer(words:verb()),

    random(animals).name.."-"..words:verb().pp.." "..words:socialGroup().name,
    words:color().name.." "..words:socialGroup().name,
    words:socialGroup().name.." of the "..random(animals).name,
    words:socialGroup().name.." of the "..words:color().name.." "..random(animals).name,
    "un"..words:verb().pp,
    words:verb().pp,
    words:socialGroup().name.." of the "..landscape,
    landscape.." "..words:socialGroup().name
  }

  return "the "..random(possibleNames)
end
