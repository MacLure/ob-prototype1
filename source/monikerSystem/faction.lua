Faction = Class{}

function Faction:init(params)
  local this = {}
  this.leader = ""
  this.name = ""
  this.unitTypes = {}

  setmetatable(this, self)
  return this
end

function Faction:printFaction()

end
