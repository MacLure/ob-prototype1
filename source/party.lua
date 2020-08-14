Party = Class{}

function Party:init()
  local this = {
    availableCharacters = {},
    units = {},
    leader = {}
  }
  
  setmetatable(this, self)
  return this
end
