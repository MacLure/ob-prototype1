Location = Class{}

function Location:init(params)
  local this = {}
  setmetatable(this, self)

  this.tags = params.tags
  this.region = params.region
  this.settlementType = params.settlementType
  this.size = math.random(1, 10)

  -- size 1 = single person
  -- size 5 = small town
  -- size 10 = large city

  -- LOCATION TYPES
  -- settlement
  --   1: small village
  --   5: medium town
  --   10: major city
  -- fortification
  --  1: encampment
  --  2: outpost
  --  5: fort
  --  6: fortress
  --  10: castle
  -- establishment
  --   1: farm
  --   5: estate
  --   10: 
  -- dwelling
  --  1: 
  --  5:
  --  10: 

  this.placeName = placeNameGenerators[this.region.placeNameIndex]()
  if this.settlementType == "wild" then
    this.fullName = this:makeWildLocationName()
  else
    this.fullName = this:makeSettlementName()
  end

  return this
end

function Location:printDetails()
  print(self.fullName)
end

function Location:makeSettlementName()
  return placeNameGenerator:settlementName(
    {
      name = self.placeName,
      settlementType = self.settlementType,
      region = self.region
    }
  )
end

function Location:makeWildLocationName()
  return placeNameGenerator:wildLocationName(
    {
      name = self.placeName,
      settlementType = "wild",
      region = self.region
    }
  )
end
