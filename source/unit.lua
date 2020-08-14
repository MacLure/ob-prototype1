Unit = Class{}

function Unit:init(def, party)
  local this = {
    characters = {},
    leader = {},
    capacity = 5,
    size = 0,
    party = party
  }

  this.mapIcon = this.leader.icon
  this.unitName = this.leader.name
  
  setmetatable(this, self)

  return this
end

function Unit:addCharacter(character)
  table.insert(self.characters, character)
end

function Unit:remainingCapacity()
  return self.capacity - #self.characters
end

function Unit:assignLeader(leader)
  self.leader = leader
end

function Unit:removeCharacter(character)
  -- TODO: remove character from unit
  self.party:addReserveCharacter(character)
end