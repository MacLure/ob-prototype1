ProgressManager = Class {}

function ProgressManager:new(params)
  local this = {}
  setmetatable(this, self)

  this.domains = {}
  this.activeDomains = {}
  this.clearedDomains = {}

  this.regions = {}
  this.clearedRegions = {}

  this.mapState = params.mapstate

  return this
end

