StateStack = Class{}

function StateStack:new()
  local this = {
    states = {}
  }
  setmetatable(this, self)
  return this
end

function StateStack:update(dt)
  local top = self.states[#self.states]
  top:update(dt)

  if not top then
    return
  end
end

function StateStack:render()
  for i, state in ipairs(self.states) do
    state:render()
  end
end

function StateStack:clear()
  self.states = {}
end

function StateStack:push(state)
  table.insert(self.states, state)
  state:enter()
end

function StateStack:pop()
  local top = self.states[#self.states]
  table.remove(self.states)
  top:exit()
  return top
end

function StateStack:top()
  return self.states[#self.states]
end
