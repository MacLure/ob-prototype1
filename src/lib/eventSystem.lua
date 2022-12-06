EventSystem = Class{}

function EventSystem:new()
  local this = {}
  this.handlers = {}

  setmetatable(this, self)
  return this
end

function EventSystem:add(eventName)
  self.handlers[eventName] = {}
end

function EventSystem:remove(eventName)
  self.handlers[eventName] = nil
end

function EventSystem:subscribe(eventName, callback)
  local handler = self.handlers[eventName]
  handler[#handler+1] = callback
end

function EventSystem:unsubscribe(eventName, callback)
  local handler = self.handlers[eventName]
  removeByValue(handler, handler.getIndex(callback))
end

function EventSystem:invoke(eventName, ...)
  local handler = self.handlers[eventName]
  for i = 1, #handler do
    handler[i](...)
  end
end