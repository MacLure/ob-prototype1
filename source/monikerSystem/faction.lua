Faction = Class{}

function Faction:init(params)
  local this = {}
  setmetatable(this, self)

  this.region = params.region
  this.characteristics = {}
  this.characters = {}
  this:setFactionAttributes()
  this:setName()
  -- light <-> darkness
  -- savageness <-> wisdom
  -- naturalness <-> industriousness
  -- organizedness <-> wildness

  --   1-1: gloom, sorrow
  --   1-5: curse, haunt
  --   1-10: defile, repugnent
  --   5-1: studious, 
  --   5-5: revolt, revenge
  --   5-10: merciless, savage, bloodthirsty
  --   10-1: serene, calm
  --   10-10: retribution, abolish, smite

  return this
end

function Faction:setFactionAttributes()
  local characteristics = self.characteristics
  characteristics.animal = random(self.region.animals)
  characteristics.color = words:color()
  characteristics.landscape = self.region.landscape
  characteristics.verb = words:verb()
  characteristics.socialGroup = words:socialGroup()
  
  if characteristics.socialGroup.member then
    local member = words.relations[characteristics.socialGroup.member]
    if member.gender then
      characteristics.gender = member.gender 
    end
  end

  if #characteristics.animal.attributes > 0 then
    characteristics.animalAttributes = {}
    for i, attribute in pairs(characteristics.animal.attributes) do
      table.insert(characteristics.animalAttributes, attribute)
    end
  end
end

function Faction:setName()
  local characteristics = self.characteristics
  local animal = characteristics.animal
  local color = characteristics.color
  local landscape = characteristics.landscape
  local verb = characteristics.verb
  local socialGroup = characteristics.socialGroup

  local possibleNames = {
    -- words:color().name.." "..words:pluralize(random(animals).name),
    -- words:pluralize(words:relation().name).." of the "..landscape,
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

  if self.characteristics.animalAttributes then
    table.insert(possibleNames, color.name.." "..words:pluralize(random(characteristics.animalAttributes)))
    table.insert(possibleNames, socialGroup.name.." of the "..color.name.." "..random(characteristics.animalAttributes))
  end

  self.name = "the "..random(possibleNames)
end

function Faction:makeCharacter()
  local character = Character:init({
    region= self.region,
    faction = self
  })

  table.insert(self.characters, character)

  return character
end
