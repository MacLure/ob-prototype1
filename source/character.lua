Character = Class{}

function Character:init(def)
  local this = {
    icon = gIcons[def.id],
    class = def.id
  }
  
  setmetatable(this, self)

  this.name = this:assignRandomName()

  return this
end

function Character:assignRandomName()
  local name = gHumanNames[math.random(#gHumanNames)]
  local nameIndex = getIndex(gHumanNames, name)

  table.remove(gHumanNames, nameIndex)

  return name
end
