function voronoi(size, numPoints)
  local noiseMap = {}
  -- local imageData = love.image.newImageData(size.x, size.y)

  local numPoints = numPoints or 2

  local featurePoints = {}
  local featurePointValues = {}

  for i = 1, numPoints do
    featurePoints[i] = Vector:new(math.random(1, size.x), math.random(1, size.y))
    featurePointValues[i] = {math.random(), math.random(), math.random()}
  end

  for y = 0, size.y-1 do
    for x = 0, size.x-1 do
      local distances = {}
      local closestFeaturePointIndex = 1

      for i = 1, #featurePoints do
        local XY = Vector:new(x, y)
        distances[i] = XY:distanceFrom(featurePoints[i])

        if XY:distanceFrom(featurePoints[i]) < XY:distanceFrom(featurePoints[closestFeaturePointIndex]) then
          closestFeaturePointIndex = i
        end

        local noiseColor = featurePointValues[closestFeaturePointIndex]
        if not noiseMap[y] then
          noiseMap[y] = {}
        end
        noiseMap[y][x] = noiseColor

        -- imageData:setPixel(
        --   x, y,
        --   noiseColor[1],
        --   noiseColor[2],
        --   noiseColor[3]
        -- )
      end
    end
  end
  -- return imageData
  return noiseMap
end

function voronoiImageFromPoints(size, points)
  local noiseMap = {}
  -- local imageData = love.image.newImageData(size.x, size.y)

  local featurePoints = points
  local featurePointValues = {}

  for i = 1, #featurePoints do
    -- featurePoints[i] = Vector:new(math.random(1, size.x), math.random(1, size.y))
    featurePointValues[i] = {math.random(), math.random(), math.random()}
  end

  for y = 0, size.y-1 do
    for x = 0, size.x-1 do
      local distances = {}
      local closestFeaturePointIndex = 1

      for i = 1, #featurePoints do
        local XY = Vector:new(x, y)
        distances[i] = XY:distanceFrom(featurePoints[i])

        if XY:distanceFrom(featurePoints[i]) < XY:distanceFrom(featurePoints[closestFeaturePointIndex]) then
          closestFeaturePointIndex = i
        end

        local noiseColor = featurePointValues[closestFeaturePointIndex]
        if not noiseMap[y] then
          noiseMap[y] = {}
        end
        noiseMap[y][x] = noiseColor

        -- imageData:setPixel(
        --   x, y,
        --   noiseColor[1],
        --   noiseColor[2],
        --   noiseColor[3]
        -- )
      end
    end
  end
  -- return imageData
  return noiseMap
end