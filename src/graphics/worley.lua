function worley(size, numPoints)
  local noiseMap = love.image.newImageData(size.x, size.y)
  local points = {}
  local numPoints = numPoints or 2
  
  for i = 1, numPoints do
    table.insert(points, {math.random(size.x-1), math.random(size.y-1)})
  end

  local lowest, highest = 1,0

  for x = 0, size.x -1 do
    for y = 0, size.y -1 do
        local distances = {}
      for j = 1, #points do
        local value = distance(
          Vector:new(x, y), Vector:new(points[j][1], points[j][2])
        )
        table.insert(distances, value)
      end

      table.sort(distances)
      local n = 1
  
      if distances[1] < lowest then lowest = distances[1] end
      if distances[#distances] > highest then highest = distances[#distances] end

      local noise = distances[n]/highest*3

      local index = y * size.x + x +1
      noiseMap:setPixel(x, y, noise, noise, noise)
    end
  end

  return noiseMap
end
