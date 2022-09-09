RegionGenerator = Class{}

function RegionGenerator:init()
  local this = {}
  this.regions = {}

  setmetatable(this, self)
  return this
end

function RegionGenerator:generateRegion()
  local regionParams = {
    landscape = "",
    isolatedness = math.random(1,10),
  }
  local region = Region:init(regionParams)
  table.insert(self.regions, region)
end
