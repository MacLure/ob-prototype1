StateMachine = Class{}

function StateMachine:init(states)
	local this = {
		empty = {
			render = function() end,
			update = function() end,
			enter = function() end,
			exit = function() end
		},
		states = states or {},  -- [name] -> [function that returns state]
		current = nil,
	}
	
	this.current = this.empty
	setmetatable(this, self)
	return this
end

function StateMachine:change(stateName, enterParams)
	assert(self.states[stateName]) 
	self.current:exit()
	self.current = self.states[stateName]()
	self.current:enter(enterParams)
end

function StateMachine:update(dt)
	self.current:update(dt)
end

function StateMachine:render()
	self.current:render()
end
