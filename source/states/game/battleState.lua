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

  this.storyPanel = Panel:init(
    {},
    {
      x= 100,
      y= 100,
      width= 100,
      height= 100
    },
    {0.3,0.3,0.3}
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
  local enemyPartyX = 300
  local enemyPartyY = 50

  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight2'], enemyPartyX+65, enemyPartyY)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight2'], enemyPartyX+25, enemyPartyY+20)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric2'], enemyPartyX+135, enemyPartyY+40)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon2'], enemyPartyX+75, enemyPartyY+50)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja2'], enemyPartyX+50, enemyPartyY+50)

  local playerPartyX = 160
  local playerPartyY = 150

  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], playerPartyX+65, playerPartyY+50)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], playerPartyX+25, playerPartyY+70)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric1'], playerPartyX+136, playerPartyY+90)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon1'], playerPartyX+75, playerPartyY+100)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja1'], playerPartyX+50, playerPartyY+100)

  local playerPanelX = 390
  local playerPanelY = 200
  local ySpacing = 0

  self.playerPanel:render(playerPanelX, playerPanelY, 200, 110)

  love.graphics.setFont(gFonts['default'])

  for i in ipairs(party.units[1].characters) do
    love.graphics.draw(icons, party.units[1].characters[i].icon, playerPanelX+10, playerPanelY+10 + ySpacing)
    printWithShadow(party.units[1].characters[i].name, playerPanelX+32, playerPanelY+10 + ySpacing, 100, "left")
    ySpacing = ySpacing + 20
  end

  local enemyPanelX = 490
  local enemyPanelY = 50

  self.enemyPanel:render(enemyPanelX, enemyPanelY, 100, 110)
  ySpacing = 0

  for i in ipairs(unit2.characters) do
    love.graphics.draw(icons, unit2.characters[i].icon, enemyPanelX+10, enemyPanelY+10 + ySpacing)
    printWithShadow(unit2.characters[i].name, enemyPanelX+32, enemyPanelY+10 + ySpacing, 100, "left")
    ySpacing = ySpacing + 20
  end

  self.storyPanel:render(50, 25, 250, 140)
  love.graphics.draw(portraits, gPortraits['4'], 230, 35)

  local optionsX = 40
  local optionsY = 300

  printWithShadow("Auto-Action", optionsX, optionsY, 100, "left")
  printWithShadow("Retreat", optionsX, optionsY+20, 100, "left")

  love.graphics.draw(hud, 10, 10)


end