-- STATES: GAME
require 'source/states/game/BaseState'

-- UTILITIES & HELPERS
require 'source/utils/helpers'
require 'source/utils/StateMachine'
require 'source/utils/StateStack'
require 'source/utils/animation'
require 'source/utils/PrintTable'

-- UI
require 'source/panel'

require 'source/character'
require 'source/party'
require 'source/names'

gFonts = {
  ['default'] = love.graphics.newFont('source/assets/fonts/Reactor7.ttf', 16),
  ['default-large'] = love.graphics.newFont('source/assets/fonts/Reactor7.ttf', 32),
  ['default-small'] = love.graphics.newFont('source/assets/fonts/Reactor7.ttf', 8)
}

gPanels = {
  ['panel'] = love.graphics.newImage('source/assets/ui/panel.png')
}

portraits = love.graphics.newImage('source/assets/spritesheets/portraits.png')

gPortraits =  {
  ['1'] = love.graphics.newQuad(0,0,64,63, portraits:getDimensions()),
  ['2'] = love.graphics.newQuad(0,64,64,63, portraits:getDimensions()),
  ['3'] = love.graphics.newQuad(0,128,64,63, portraits:getDimensions()),
  ['4'] = love.graphics.newQuad(0,192,64,63, portraits:getDimensions()),
  ['5'] = love.graphics.newQuad(0,248,64,63, portraits:getDimensions()),
  ['6'] = love.graphics.newQuad(0,312,64,63, portraits:getDimensions()),
}

icons = love.graphics.newImage('source/assets/spritesheets/char-icons.png')

gIcons =  {
  ['knight'] = love.graphics.newQuad(32,96,16,16, icons:getDimensions()),
  ['2'] = love.graphics.newQuad(16,0,16,16, icons:getDimensions()),
  ['3'] = love.graphics.newQuad(32,0,16,16, icons:getDimensions()),
  ['4'] = love.graphics.newQuad(64,0,16,16, icons:getDimensions()),
  ['5'] = love.graphics.newQuad(0,16,16,16, icons:getDimensions()),
  ['6'] = love.graphics.newQuad(16,16,16,16, icons:getDimensions()),
}

require 'source/characterTypes'

