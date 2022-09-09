Region = Class{}

function Region:init(params)
  local this = {}
  this.wildlife = {}
  this.locations = {}
  this.factions = {}
  this.name = ""

  setmetatable(this, self)
  return this
end

function Region:printRegion()

end
