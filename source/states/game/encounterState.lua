EncounterState = Class{}

function EncounterState:init(stack, def)
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

  setmetatable(this, self)
  return this
end

function EncounterState:enter(dt)

end

function EncounterState:exit(dt)

end

function EncounterState:update(dt)

end

function EncounterState:handleInput(dt)

end

function EncounterState:render(dt)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], 115, 150)
  love.graphics.draw(gBattleSpriteSheets['knight'], gBattleSprites['knight1'], 75, 170)
  love.graphics.draw(gBattleSpriteSheets['cleric'], gBattleSprites['cleric1'], 186, 190)
  love.graphics.draw(gBattleSpriteSheets['dragon'], gBattleSprites['dragon1'], 125, 200)
  love.graphics.draw(gBattleSpriteSheets['ninja'], gBattleSprites['ninja1'], 100, 200)

  self.playerPanel:render(300, 150, 200, 110)

  local ySpacing = 0
  love.graphics.setFont(gFonts['default'])

  for i in ipairs(party.units[1].characters) do
    love.graphics.draw(icons, party.units[1].characters[i].icon, 310, 160 + ySpacing)
    printWithShadow(party.units[1].characters[i].name, 332, 160 + ySpacing, 100, "left")
    ySpacing = ySpacing + 20
  end

end