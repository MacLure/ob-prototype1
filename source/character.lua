Character = Class{}

function Character:init(def)
  local this = {
    icon = gIcons[def.id],
    name = gNames[ math.random( #gNames ) ],
    class = def.id
  }
  
  setmetatable(this, self)
  return this
end
