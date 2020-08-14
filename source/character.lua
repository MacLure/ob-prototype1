Character = Class{}

function Character:init(def)
  print(def)
  local this = {
    icon = gIcons[def.id],
    name = gNames[ math.random( #gNames ) ] 
  }
  
  print(this.name)
  setmetatable(this, self)
  return this
end
