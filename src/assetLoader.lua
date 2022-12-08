gFonts = {
  ['default'] = love.graphics.newFont('assets/fonts/Reactor7.ttf', 16)
}
imageFont = love.graphics.newImageFont(
  "assets/fonts/imageFont.png",
  " abcdefghijklmnopqrstuvwxyz" ..
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ0" ..
  "123456789.,!?-+/():;%&`'*#=[]\""
)


gPanels = {
  ['panel'] = love.graphics.newImage('assets/ui/panel.png')
}

worldTiles = love.graphics.newImage('assets/tilesets/worldMap.png')
mapEdge = love.graphics.newImage('assets/tilesets/mapEdge.png')

hud = love.graphics.newImage('assets/ui/hud.png')
worldMapSwords = love.graphics.newImage('assets/ui/world-map-swords.png')

portraits = love.graphics.newImage('assets/spritesheets/portraits.png')

gPortraits =  {
  ['1'] = love.graphics.newQuad(0,0,64,63, portraits:getDimensions()),
  ['2'] = love.graphics.newQuad(64,0,64,63, portraits:getDimensions()),
  ['3'] = love.graphics.newQuad(128,0,64,63, portraits:getDimensions()),
  ['4'] = love.graphics.newQuad(192,0,64,63, portraits:getDimensions()),
  ['5'] = love.graphics.newQuad(256,0,64,63, portraits:getDimensions()),
  ['6'] = love.graphics.newQuad(320,0,64,63, portraits:getDimensions()),

  ['7'] = love.graphics.newQuad(0,63,64,63, portraits:getDimensions()),
  ['8'] = love.graphics.newQuad(0,126,64,63, portraits:getDimensions()),
  ['9'] = love.graphics.newQuad(0,189,64,63, portraits:getDimensions()),
  ['10'] = love.graphics.newQuad(0,252,64,63, portraits:getDimensions()),
  ['11'] = love.graphics.newQuad(0,315,64,63, portraits:getDimensions()),
}

icons = love.graphics.newImage('assets/spritesheets/char-icons.png')

gIcons =  {
  ['knight'] = love.graphics.newQuad(32,96,16,16, icons:getDimensions()),
  ['mage'] = love.graphics.newQuad(0,112,16,16, icons:getDimensions()),
  ['dragon'] = love.graphics.newQuad(48,64,16,16, icons:getDimensions()),
  ['cleric'] = love.graphics.newQuad(32,64,16,16, icons:getDimensions()),
  ['ninja'] = love.graphics.newQuad(64,64,16,16, icons:getDimensions()),
  ['6'] = love.graphics.newQuad(16,16,16,16, icons:getDimensions()),
}

gBattleSpriteSheets = {
  ['knight'] = love.graphics.newImage('assets/spritesheets/knight.png'),
  ['cleric'] = love.graphics.newImage('assets/spritesheets/cleric.png'),
  ['dragon'] = love.graphics.newImage('assets/spritesheets/dragon.png'),
  ['ninja'] = love.graphics.newImage('assets/spritesheets/ninja.png'),
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

gTileSets = {
  ['field'] = love.graphics.newImage('assets/tilesets/fieldMap.png'),
}

gSfx = {}

gMusic = {}