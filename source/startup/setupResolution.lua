love.graphics.setDefaultFilter('nearest', 'nearest')

local pixelScaleIndex = 1
local pixelScales = {
  {640, 360},
  {512, 288},
  {427, 240},
  {320, 240},
  {256, 192},
  {128, 96},
}

local WINDOW_WIDTH, WINDOW_HEIGHT = 1280, 720
VIRTUAL_WIDTH, VIRTUAL_HEIGHT = unpack(pixelScales[pixelScaleIndex])

push:setupScreen(VIRTUAL_WIDTH, VIRTUAL_HEIGHT, WINDOW_WIDTH, WINDOW_HEIGHT, {
  vsync = false,
  fullscreen = true,
  resizable = true,
  pixelperfect = true,
  stretched = true
})  
