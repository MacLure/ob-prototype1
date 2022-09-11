Location = Class{}

function Location:init(params)
  local this = {}
  setmetatable(this, self)

  this.tags = params.tags
  this.landscape = params.landscape
  this.placeName = placeName()

  return this
end

function Location:printDetails()
  print("OK")
end