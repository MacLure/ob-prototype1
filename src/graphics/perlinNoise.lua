function perlinNoise(size, params)
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
      value = noise((x * inc.x + start.x), (y * inc.y + start.y)) * 0.55   			-- greyscale value in noise space
      + noise(2 * (x * inc.x + start.x), 2 * (y * inc.y + start.y) ) * 0.54	-- add some higher order "harmonics"
      + noise(3 * (x * inc.x + start.x), 3 * (y * inc.y + start.y) ) * 0.10
      - noise(6 * (x * inc.x + start.x), 6 * (y * inc.y + start.y) ) * 0.20  -- the harmonics can be variant in x,y !!
  
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
