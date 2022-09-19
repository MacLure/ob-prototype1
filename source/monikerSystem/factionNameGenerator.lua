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

function FactionNameGenerator:setFactionAttributes(faction)
  faction.characteristics.animal = random(self:animals(faction.region))
  faction.characteristics.color = words:color()
  faction.characteristics.landscape = self:landscape(faction.region)
  faction.characteristics.verb = words:verb()
  faction.characteristics.socialGroup = words:socialGroup()
  
  if faction.characteristics.socialGroup.member then
    local member = words.relations[faction.characteristics.socialGroup.member]
    if member.gender then
      faction.characteristics.gender = member.gender 
    end
  end
end

function FactionNameGenerator:nameFaction(faction)
  -- local region = faction.region
  local factionCharacteristics = faction.characteristics
  local animal = factionCharacteristics.animal
  local color = factionCharacteristics.color
  local landscape = factionCharacteristics.landscape
  local verb = factionCharacteristics.verb
  local socialGroup = factionCharacteristics.socialGroup

  local possibleNames = {
    -- words:color().name.." "..words:pluralize(random(animals).name),
    -- words:pluralize(words:relation().name).." of the "..landscape,
    -- words:color().name.." "..words:pluralize(words:attribute().name),
    -- words:substance().name.." "..words:pluralize(random(animals).name),
    -- words:substance().name.." "..words:pluralize(words:doer(words:verb()),

    animal.name.."-"..verb.pp.." "..socialGroup.name,
    color.name.." "..socialGroup.name,
    socialGroup.name.." of the "..animal.name,
    socialGroup.name.." of the "..color.name.." "..animal.name,
    "un"..verb.pp,
    verb.pp,
    socialGroup.name.." of the "..landscape,
    landscape.." "..socialGroup.name
  }

  faction.name = "the "..random(possibleNames)
end
