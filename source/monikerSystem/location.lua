Location = Class{}

function Location:init(params)
  local this = {}
  setmetatable(this, self)

  this.tags = params.tags
  this.region = params.region

  this.placeName = placeNameGenerator:randomName(this.region)

  return this
end

function Location:printDetails()
  print(self.placeName)
end