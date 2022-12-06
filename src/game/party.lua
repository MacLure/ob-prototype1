Party = Class{}

function Party:new()
  local this = {
    reserveCharacters = {},
    units = {},
    leader = {},
    gold = 0
  }
  
  setmetatable(this, self)
  return this
end

function Party:addReserveCharacter(character)
  table.insert(self.reserveCharacters, character)
end

function Party:addUnit(unit)
  table.insert(self.units, unit)
end