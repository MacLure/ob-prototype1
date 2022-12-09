Domain = Class {}

function Domain:new(params)
  local this = {}
  setmetatable(this, self)

  this.worldMapPosition = params.worldMapPosition
  this.nameGenerator = params.nameGenerator
  this.domainName = this.nameGenerator()
  this.nextDomains = {}
  this.color = params.color
  this.regions = {}
  this.cleared = false
  this.domains = params.domains

  return this
end

function Domain:addRegion(region)
  table.insert(self.regions, region)
  region.domain = self
  region.nameGenerator = self.nameGenerator
  region.placeName = region.nameGenerator()
end

function Domain:orderRegionsByDistance(point)
  local function compareDistance(a, b)
    local distanceA = point:distanceFrom(a.worldMapPosition)
    local distanceB = point:distanceFrom(b.worldMapPosition)
    return distanceA < distanceB
  end

  table.sort(self.regions, compareDistance)
  return orderedRegions
end

function Domain:clear()
  self.cleared = true

  local nextDomain = self:domainsByDistance()[1]

  table.insert(self.nextDomains, nextDomain)
end

function Domain:clearedDomains()
  self.domains.
  self.cleared = true

  local nextDomain = self:domainsByDistance()[1]

  table.insert(self.nextDomains, nextDomain)
end

function Domain:domainsByDistance()
  local orderedDomains = {}

  local availableDomains = filter(self.domains, function(domain) return not domain.cleared end)

  for i, candidateDomain in pairs(availableDomains) do
    if candidateDomain ~= self then
      if not contains(orderedDomains, candidateDomain) then
        table.insert(orderedDomains, candidateDomain)
      end
    end
  end

  local function compareDistance(a, b)
    local distanceA = self.worldMapPosition:distanceFrom(a.worldMapPosition)
    local distanceB = self.worldMapPosition:distanceFrom(b.worldMapPosition)
    return distanceA < distanceB
  end

  table.sort(orderedDomains, compareDistance)
  return orderedDomains
end
