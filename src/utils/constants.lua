color = {
  black = {0,0,0},
  white = {1,1,1},
  grey = {0.5,0.5,0.5},
  red = {1,0,0},
  green = {0,1,0},
  yellow = {1,1,0},
  green = {0,1,0},
  cyan = {0,1,1},
  blue = {0,0,1},
  magenta = {1,0,1},
  aquamarine = {0,1,0.5},
  pink = {1,0.5,1},
  orange = {1,0.5,0},
  lavender = {0.5,0.5,1},
}

function transparent(color)
  local r,g,b = color[1], color[2], color[3]
  return {r,g,b,0}
end

whitePixelData = love.image.newImageData(2,2)
  
for i=0, 1 do
  for j=0, 1 do
    whitePixelData:setPixel(j, i, 1,1,1,1)
 end
end

whitePixel = love.graphics.newImage(whitePixelData)
