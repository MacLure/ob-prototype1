Faction = Class{}

function Faction:init(params)
  local this = {}
  this.region = params.region
  this.characteristics = {}
  factionNameGenerator:setFactionAttributes(this)
  factionNameGenerator:nameFaction(this)
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

  setmetatable(this, self)
  return this
end

function Faction:makeCharacter()
  local character = Character:init({
    region= self.region,
    faction = self
  })

  return character
end
