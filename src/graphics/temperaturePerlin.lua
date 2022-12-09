function temperaturePerlin(size, params)
  local params = params or {}
  local noise = love.math.noise
  local adjustment = Vector:new(0.1, 0.1)
  local start = Vector:new(math.random(1000), math.random(1000))
  local inc = Vector:new(1/size.x, 1/size.y)
  local pos = Vector:new(44, 0)
  local color1 = params.color1 or color.black
  local color2 = params.color2 or color.white

  local perlinMap = love.image.newImageData(size.x, size.y)
  local index
  for y = 1, size.y do
    for x = 1, size.x do
      index = (y-1) * size.x + x
      value = noise((x * inc.x + start.x), (y * inc.y + start.y))
  
      local color = mixColors(color1, color2, value)
      perlinMap:setPixel(
        x-1, y-1,
        color[1],
        color[2],
        color[3]
      )
    end
  end

  return perlinMap
end
