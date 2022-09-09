FactionGenerator = Class{}

function FactionGenerator:init()
  local this = {}
  this.factions = {}

  setmetatable(this, self)
  return this
end

function FactionGenerator:generateFaction()
  local factionParams = {
    landscape = "",
    isolatedness = math.random(1,10),
    values = {},
    scorns = {},
    alignment = math.random(1,10),
    sophistication = math.random(1,10),
    shareOfPower = math.random(1,10),
    ancientness = math.random(1,10),
  }
  local faction = Faction:init(factionParams)
  table.insert(self.factions, faction)
end
