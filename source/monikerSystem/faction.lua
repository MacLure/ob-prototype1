Faction = Class{}

function Faction:init(params)
  local this = {}
  this.region = params.region
  this.name = factionNameGenerator:randomName(this.region)

  setmetatable(this, self)
  return this
end

function Faction:printDetails()
  print(self.name) 
end
