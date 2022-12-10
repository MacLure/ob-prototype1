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
  this.progressManager = params.progressManager

  return this
end

function Domain:addRegion(region)
  table.insert(self.regions, region)
  region.domain = self
  region.nameGenerator = self.nameGenerator
  region.placeName = region.nameGenerator()
end

function Domain:orderRegionsByDistance(point, direction)
  local function compareDistance(a, b)
    local distanceA = point:distanceFrom(a.worldMapPosition)
    local distanceB = point:distanceFrom(b.worldMapPosition)
    if direction == "near" then
      return distanceA < distanceB
    end
    return distanceA > distanceB
  end

  local table = table.sort(self.regions, compareDistance)
end

function Domain:clear()
  if self.cleared then return end
  self.cleared = true

  local nextDomain = self:domainsByDistance()[1]
  table.insert(self.nextDomains, nextDomain)

  for i, domain in pairs(self.nextDomains) do
    domain:orderRegionsByDistance(self.regions[#self.regions].worldMapPosition, "near")
    table.insert(self.progressManager.activeDomains, domain)
    removeByValue(self.progressManager.activeDomains, self)
  end

  print(self.domainName.." cleared")
end

function Domain:domainsByDistance()
  local orderedDomains = {}

  local availableDomains = filter(
    self.progressManager.domains,
    function(domain)
      return not domain.cleared and not contains(self.progressManager.activeDomains, domain)
    end
  )

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
