StateStack = Class{}

function StateStack:init()
  local this = {
    states = {}
  }
  setmetatable(this, self)
  return this
end

function StateStack:update(dt)
  -- self.states[#self.states]:update(dt)
  local top = self.states[#self.states]

  if #self.states > 1 then
    if self.states[#self.states-1].continueUpdating then
      self.states[#self.states-1]:update(dt)
    end
  end

  if not top then
    return
  end
  top:handleInput(dt)

  -- glitchy player movement if top update happens after this for loop
  for k = #self.states, 1, -1 do
    local v = self.states[k]
    local continue = v:update(dt)
    if not continue then
      break
    end
  end
end

-- function StateStack:processAI(params, dt)
--   self.states[#self.states]:processAI(params, dt)  
-- end

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
  -- self.states[#self.states]:exit()
  table.remove(self.states)
  top:exit()
  return top
end

function StateStack:top()
  return self.states[#self.states]
end

function StateStack:pushFittedTextbox(x, y, wrap, text, params)
  local params = params or {}
  local choices = params.choices
  local title = params.title
  local avatar = params.avatar
  local padding = 10
  local panelTileSize = 3
  local textFont = gFonts['ff7'] -- duplicate code in textbox class
  local textObject = love.graphics.newText(textFont, text)
  local wrapWidth, textLines = textFont:getWrap(text, wrap )
  local width = math.min(wrap, wrapWidth + 4) + padding * 2
  local height = textObject:getHeight() * #textLines + (padding * 2 + 4)

  if choices then
    local selectionMenu = Selection:init
      {
        data = choices.options,
        displayRows = #choices.options,
        columns = 1,
      }
    height = height + selectionMenu:getHeight() + padding * 2
    width = math.max(width, selectionMenu:getWidth() + padding * 2)
  end

  -- return self:addFixed(x, y, width, height, text, params)
  return self:pushFixedTextbox(x, y, width, height, text, params)

end

function StateStack:pushFixedTextbox(x, y, width, height, text, params)
  params = params or {}

  local choices = params.choices
  local padding = 10
  local panelTileSize = 3
  local selectionMenu = nil

  if choices then
    selectionMenu = Selection:init
      {
        data = choices.options,
        onSelection = choices.onSelection,
      }
  end
  
  local textbox = Textbox:init
    {
      text = text,
      dimensions = {
        x = x,
        y = y,
        width = width,
        height = height
      },
      panelArgs = {
        texture = gPanels['panel'],
        tileSize = panelTileSize,
      },
      selectionMenu = selectionMenu,
      onFinish = params.onFinish,
      stack = self
    }

  table.insert(self.states, textbox)
end