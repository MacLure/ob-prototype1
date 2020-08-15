BattleState = Class{}

function BattleState:init(stack, def)
  local this = {}
  
  this.playerPanel = Panel:init(
    {},
    {
      x= 100,
      y= 100,
      width= 100,
      height= 100
    }
  )

  this.enemyPanel = Panel:init(
    {},
    {
      x= 200,
      y= 100,
      width= 100,
      height= 100
    },
    {0.5,0.01,0.01}
  )

  setmetatable(this, self)
  return this
end

function BattleState:enter(dt)

end

function BattleState:exit(dt)

end

function BattleState:update(dt)

end

function BattleState:handleInput(dt)

end

function BattleState:render(dt)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight2'], 265, 030)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight2'], 225, 050)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric2'], 335, 070)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon2'], 275, 080)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja2'], 250, 80)

  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], 115, 130)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], 75, 150)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric1'], 186, 170)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon1'], 125, 180)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja1'], 100, 180)

  self.enemyPanel:render(300, 150, 200, 110)

  local ySpacing = 0
  love.graphics.setFont(gFonts['default'])

  for i in ipairs(party.units[1].characters) do
    love.graphics.draw(icons, party.units[1].characters[i].icon, 310, 160 + ySpacing)
    printWithShadow(party.units[1].characters[i].name, 332, 160 + ySpacing, 100, "left")
    ySpacing = ySpacing + 20
  end

  self.playerPanel:render(400, 25, 100, 110)
  ySpacing = 0

  for i in ipairs(unit2.characters) do
    love.graphics.draw(icons, unit2.characters[i].icon, 410, 35 + ySpacing)
    printWithShadow(unit2.characters[i].name, 432, 35 + ySpacing, 100, "left")
    ySpacing = ySpacing + 20
  end
end