RegionGenerator = Class{}

function RegionGenerator:init(params)
  local this = {}
  this.tags = params.tags
  this.regions = {}

  setmetatable(this, self)
  return this
end

function RegionGenerator:generateRegion()
  local regionParams = {
    landscape = "",
    isolatedness = math.random(1,10),
  }

  local animals = self:animals(words:animals())
  local substances = self:substances(words:substances())

  -- printTable(animals)
  -- printTable(substances)
end

function RegionGenerator:animals(list)
  local returnList = {}

  for k,v in pairs(list) do
    if containsFromArray(v.tags, self.tags) then
      table.insert(returnList, k)
    else
      table.insert(returnList, "sea "..k)
    end
  end

  return returnList
end

function RegionGenerator:substances(list)
  local returnList = {}

  for k,v in pairs(list) do
    if containsFromArray(v.tags, self.tags) then
      table.insert(returnList, k)
    end
  end
  return returnList
end
