Word = Class{}

function Word:new()
  local this = {}
  setmetatable(this, self)
  return this
end