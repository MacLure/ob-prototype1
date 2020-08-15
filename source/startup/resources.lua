-- STATES: GAME
require 'source/states/game/baseState'

-- UTILITIES & HELPERS
require 'source/utils/helpers'
require 'source/utils/stateMachine'
require 'source/utils/stateStack'
require 'source/utils/animation'
require 'source/utils/printTable'

-- UI
require 'source/panel'

require 'source/character'
require 'source/unit'
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
  ['mage'] = love.graphics.newQuad(0,112,16,16, icons:getDimensions()),
  ['dragon'] = love.graphics.newQuad(48,64,16,16, icons:getDimensions()),
  ['cleric'] = love.graphics.newQuad(32,64,16,16, icons:getDimensions()),
  ['ninja'] = love.graphics.newQuad(64,64,16,16, icons:getDimensions()),
  ['6'] = love.graphics.newQuad(16,16,16,16, icons:getDimensions()),
}

gBattleSpriteSheets = {
  ['knight'] = love.graphics.newImage('source/assets/spritesheets/knight.png'),
  ['cleric'] = love.graphics.newImage('source/assets/spritesheets/cleric.png'),
  ['dragon'] = love.graphics.newImage('source/assets/spritesheets/dragon.png'),
  ['ninja'] = love.graphics.newImage('source/assets/spritesheets/ninja.png'),
}

gBattleSprites = {
  ['knight1'] = love.graphics.newQuad(0,0,gBattleSpriteSheets['knight']:getWidth()/2,gBattleSpriteSheets['knight']:getHeight(), gBattleSpriteSheets['knight']:getDimensions()),
  ['cleric1'] = love.graphics.newQuad(0,0,gBattleSpriteSheets['cleric']:getWidth()/2,gBattleSpriteSheets['cleric']:getHeight(), gBattleSpriteSheets['cleric']:getDimensions()),
  ['dragon1'] = love.graphics.newQuad(0,0,gBattleSpriteSheets['dragon']:getWidth()/2,gBattleSpriteSheets['dragon']:getHeight(), gBattleSpriteSheets['dragon']:getDimensions()),
  ['ninja1'] = love.graphics.newQuad(0,0,gBattleSpriteSheets['ninja']:getWidth()/2,gBattleSpriteSheets['ninja']:getHeight(), gBattleSpriteSheets['ninja']:getDimensions()),

  ['knight2'] = love.graphics.newQuad(gBattleSpriteSheets['knight']:getWidth()/2,0,gBattleSpriteSheets['knight']:getWidth()/2,gBattleSpriteSheets['knight']:getHeight(), gBattleSpriteSheets['knight']:getDimensions()),
  ['cleric2'] = love.graphics.newQuad(gBattleSpriteSheets['cleric']:getWidth()/2,0,gBattleSpriteSheets['cleric']:getWidth()/2,gBattleSpriteSheets['cleric']:getHeight(), gBattleSpriteSheets['cleric']:getDimensions()),
  ['dragon2'] = love.graphics.newQuad(gBattleSpriteSheets['dragon']:getWidth()/2,0,gBattleSpriteSheets['dragon']:getWidth()/2,gBattleSpriteSheets['dragon']:getHeight(), gBattleSpriteSheets['dragon']:getDimensions()),
  ['ninja2'] = love.graphics.newQuad(gBattleSpriteSheets['ninja']:getWidth()/2,0,gBattleSpriteSheets['ninja']:getWidth()/2,gBattleSpriteSheets['ninja']:getHeight(), gBattleSpriteSheets['ninja']:getDimensions()),
}

require 'source/characterTypes'

