Unit = Class{}

function Unit:init(def)
  local this = {
    leader = {},
    capacity = 5,
    size = 0
  }

  this.mapIcon = this.leader.icon
  this.unitName = this.leader.name
  
  setmetatable(this, self)

  return this
end
