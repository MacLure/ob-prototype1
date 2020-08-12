function love.load()
  require 'source/startup/dependencies'
  require 'source/startup/setupResolution'
  require 'source/startup/resources'
  math.randomseed(os.time())
  love.keyboard.keysPressed = {}
  debug = false
end

function love.update()
end

function love.draw()
  push:apply('start')

  love.graphics.draw(portraits, gPortraits['1'], VIRTUAL_WIDTH/2, VIRTUAL_HEIGHT/2)
  push:apply('end')
end