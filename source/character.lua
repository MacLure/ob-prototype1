Character = Class{}

function Character:init(def)
  local this = {
    icon = gIcons[def.id],
    class = def.id
  }
  
  setmetatable(this, self)

  this.name = random(gNames.humanNames)

  return this
end

