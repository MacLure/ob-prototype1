local function isValid(candidate, sampleRegionSize, cellSize, radius, points, grid)
  if candidate.x >= 0 and
     candidate.x < sampleRegionSize.x and
     candidate.y >= 0 and
     candidate.y < sampleRegionSize.y
     then
    local cell = Vector:new(
      math.ceil(candidate.x / cellSize),
      math.ceil(candidate.y / cellSize)
    )

    local searchStart = Vector:new(
      math.max(1, cell.x - 2),
      math.max(1, cell.y - 2)
    )

    local searchEnd = Vector:new(
      math.min(cell.x + 2, #grid[1]),
      math.min(cell.y + 2, #grid)
    )

    for y = searchStart.y, searchEnd.y do
      for x = searchStart.x, searchEnd.x do
        local pointIndex = grid[y][x]
        if pointIndex ~= 0 then
          local sqrDst = candidate:subtract(points[pointIndex]):magnitude()
          if sqrDst < radius * radius then
            return false
          end
        end
      end
    end
    return true;
  end
  return false;
end

function poissonPoints(radius, sampleRegionSize, numSamplesBeforeRejection)
  local numSamplesBeforeRejection = numSamplesBeforeRejection or 30
  local cellSize = radius / math.sqrt(2)
  local grid = {}

  for y = 1, math.floor(sampleRegionSize.y / cellSize) do
    grid[y] = {}
    for x = 1, math.floor(sampleRegionSize.x / cellSize) do
      grid[y][x] = 0
    end
  end

  local points = {}
  local spawnPoints = {}

  table.insert(spawnPoints, Vector:new(
    math.random(0, sampleRegionSize.x),
    math.random(0, sampleRegionSize.y)
  ))

  while #spawnPoints > 0 do
    local spawnIndex = math.random(1, #spawnPoints)
    local spawnCentre = spawnPoints[spawnIndex]
    local validCandidateFound = false

    for i = 0, numSamplesBeforeRejection do
      local random = math.random()
      local angle = math.random() * math.pi * 2
      local dir = Vector:new(math.sin(angle), math.cos(angle))
      local candidate = spawnCentre:add(dir:multiply(math.random(radius, radius * 2)))

      if isValid(candidate, sampleRegionSize, cellSize, radius, points, grid) then
        table.insert(points, candidate)
        table.insert(spawnPoints, candidate)
        if not grid[math.floor(candidate.y / cellSize)] then grid[math.floor(candidate.y / cellSize)] = {} end
        grid[math.floor(candidate.y / cellSize)][math.floor(candidate.x / cellSize)] = #points
        validCandidateFound = true
        break
      end
    end

    if not validCandidateFound then
      table.remove(spawnPoints, spawnIndex)
    end
  end
  return points
end
