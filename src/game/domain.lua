Domain = Class {}

function Domain:new(params)
  local this = {}
  setmetatable(this, self)

  this.worldMapPosition = params.worldMapPosition
  this.nameGenerator = params.nameGenerator
  this.nextDomains = {}
  -- this.name = this.nameGenerator:

  return this
end