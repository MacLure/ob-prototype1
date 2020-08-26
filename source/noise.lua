noise = {}

-- noise.perlinNoise2 = function(size, scale)
--   local function fade (t)
--     return t * t * t * (t * (t * 6 - 15) + 10)
--   end

--   local function lerp(t,a,b)
--     return a + t * (b - a)
--   end

--   local function grad(hash,x,y,z)
--     local h = hash % 16
--     local u 
--     local v 
    
--     if (h<8) then u = x else u = y end
--     if (h<4) then v = y elseif (h==12 or h==14) then v=x else v=z end

--     local r
    
--     if ((h%2) == 0) then r=u else r=-u end
--     if ((h%4) == 0) then r=r+v else r=r-v end
  
--     return r
--   end

--   local p = {}
--   local permutation = { 151,160,137,91,90,15,
--     131,13,201,95,96,53,194,233,7,225,140,36,103,30,69,142,8,99,37,240,21,10,23,
--     190, 6,148,247,120,234,75,0,26,197,62,94,252,219,203,117,35,11,32,57,177,33,
--     88,237,149,56,87,174,20,125,136,171,168, 68,175,74,165,71,134,139,48,27,166,
--     77,146,158,231,83,111,229,122,60,211,133,230,220,105,92,41,55,46,245,40,244,
--     102,143,54, 65,25,63,161, 1,216,80,73,209,76,132,187,208, 89,18,169,200,196,
--     135,130,116,188,159,86,164,100,109,198,173,186, 3,64,52,217,226,250,124,123,
--     5,202,38,147,118,126,255,82,85,212,207,206,59,227,47,16,58,17,182,189,28,42,
--     223,183,170,213,119,248,152, 2,44,154,163, 70,221,153,101,155,167, 43,172,9,
--     129,22,39,253, 19,98,108,110,79,113,224,232,178,185, 112,104,218,246,97,228,
--     251,34,242,193,238,210,144,12,191,179,162,241, 81,51,145,235,249,14,239,107,
--     49,192,214, 31,181,199,106,157,184, 84,204,176,115,121,50,45,127, 4,150,254,
--     138,236,205,93,222,114,67,29,24,72,243,141,128,195,78,66,215,61,156,180
--   }

--   permutation = shuffle(permutation)

--   local function noise( x,  y,  z) 
--     local X = math.floor(x % 255)
--     local Y = math.floor(y % 255)
--     local Z = math.floor(z % 255)
--     x = x - math.floor(x)
--     y = y - math.floor(y)
--     z = z - math.floor(z)
--     local u = fade(x)
--     local v = fade(y)
--     local w = fade(z) 
    
--     A   = p[X  ]+Y
--     AA  = p[A]+Z
--     AB  = p[A+1]+Z
--     B   = p[X+1]+Y
--     BA  = p[B]+Z
--     BB  = p[B+1]+Z

--     return lerp(w, lerp(v, lerp(u, grad(p[AA  ], x  , y  , z   ), 
--                                    grad(p[BA  ], x-1, y  , z   )), 
--                            lerp(u, grad(p[AB  ], x  , y-1, z   ), 
--                                    grad(p[BB  ], x-1, y-1, z   ))),
--                    lerp(v, lerp(u, grad(p[AA+1], x  , y  , z-1 ),  
--                                    grad(p[BA+1], x-1, y  , z-1 )),
--                            lerp(u, grad(p[AB+1], x  , y-1, z-1 ),
--                                    grad(p[BB+1], x-1, y-1, z-1 )))
--     )
--   end

--   for i=0,255 do
--     p[i] = permutation[i+1]
--     p[256+i] = permutation[i+1]
--   end

--   local gridSize = size
--   local mapScale = scale
--   local offsetX = 2
--   local offsetY = 1
--   local perlinMap = love.image.newImageData(gridSize,gridSize)

--   for x=0,gridSize-1 do
--     for y=0,gridSize-1 do
--       local value = noise(x/mapScale + offsetX, y/mapScale + offsetY,0) + 0.5
--       perlinMap:setPixel(x, y, value,value,value)
--     end
--   end

--   return perlinMap
-- end

noise.imageFromData = function(noiseMap)
  return love.graphics.newImage(noiseMap)
end

noise.addLandFeature = function(ImageData)
  local height = ImageData:getHeight()
  local width = ImageData:getWidth()

  local numPoints = math.random(10,100)
  local pointValue = {0,0,1,1}

  for i = 1, numPoints do
    local pointX = math.random(width-1)
    local pointY = math.random(height-1)
    local pointR, pointG, pointB, pointA = ImageData:getPixel(pointX, pointY)
    local targetValue = pointR
    if targetValue > 0.53 then
      ImageData:setPixel(pointX, pointY,pointValue)
    end
  end
end

noise.perlinNoise = function(width, height)
  local random = math.random()
  local noise = love.math.noise
  local dots = {}		-- build the noise dots here

  local V_adj = 0.1		-- arrow keys adjust the tl corner position in 2D noise space
  local H_adj = 0.1

  local V_start =  math.random(1000)		-- starting position in noise space
  local H_start =  math.random(1000)

  local V_span = 1				--  this is the number span of image
  local H_span = 1

  local V_inc = V_span/height
  local H_inc = H_span/width

  local X_pos = 44			-- indent the active draw space
  local Y_pos = 44

    for i=1, width*height do 											-- points is a table of tables {x_init, y_init, r, g, b}
      dots[i] = {X_pos,Y_pos,0,0,0} 			-- create once and reuse
    end
    
    local rgb, index -- start drawing at beginning of buffer
    for y = 1,height do
      for x = 1,width do
        index = (y-1)*height + x
        rgb = noise( (x*H_inc + H_start), (y*V_inc + V_start) ) * 0.55   			-- greyscale value in noise space
            + noise( 2.7*(x*H_inc + H_start), 2.7*(y*V_inc + V_start) ) * 0.54	-- add some higher order "harmonics"
            + noise( 3.7*(x*H_inc + H_start), 3.7*(y*V_inc + V_start) ) * 0.10
            - noise( 6.7*(x*H_inc + H_start), 5.7*(y*V_inc + V_start) ) * 0.20  -- the harmonics can be variant in x,y !!
        
        dots[index][1] = X_pos + x
        dots[index][2] = Y_pos + y
        dots[index][3] = rgb
      end
    end
    
    love.graphics.setColor(1,1,1,1)
    local perlinMap = love.image.newImageData(width,height)
    for x=0,width-1 do
      for y=0,height-1 do
        local index = x + y*height +1
        perlinMap:setPixel(x, y, dots[index][3],dots[index][3],dots[index][3])
      end
    end

    return perlinMap
end

noise.addRivers = function (ImageData)
  local riverNoise = noise.perlinNoise()
  -- local riverNoise = noise.voronoi(ImageData:getWidth(),ImageData:getHeight(), 20)

  SIZE = ImageData:getWidth()

  for x=0,SIZE-1 do
    for y=0,SIZE-1 do
      local index = x + y*SIZE +1
      local r, g, b, a = riverNoise:getPixel(x, y)
      local r2,g2,b2,a2 = ImageData:getPixel(x, y)
      if r2 >= 0.35 and r2 < 0.7 then
        if r >=0.5 and r <0.51 then
          ImageData:setPixel(x, y, 0.35,0.35,0.35,1)
        elseif r >=0.49 and r <0.50 or r >=0.51 and r <0.52 then
          ImageData:setPixel(x, y, 0.38,0.38,0.38,1)
        elseif r >=0.48 and r <0.49 or r >=0.52 and r <0.53 then
          ImageData:setPixel(x, y, 0.41,0.41,0.41,1)
        end
      end
    end
  end
end

noise.voronoi = function(width, height, numPoints)
  local noiseMap = love.image.newImageData(width, height)
  local points = {}
  local numPoints = numPoints or 2
  
  for i = 1, numPoints do
    table.insert(points, {math.random(width-1), math.random(height-1)})
  end

  local lowest, highest = 1,0

  for x = 0, width -1 do
    for y = 0, height -1 do
        local distances = {}
      for j = 1, #points do
        local value = distance(x, y, points[j][1], points[j][2])
        table.insert(distances, value)
      end

      table.sort(distances)
      local n = 1
  
      if distances[1] < lowest then lowest = distances[1] end
      if distances[#distances] > highest then highest = distances[#distances] end

      local noise = distances[n]/highest*3

      local index = y * width + x +1
      noiseMap:setPixel(x, y, noise, noise, noise)
    end
  end

  return noiseMap
end

noise.createSubMap = function(map, x, y, width, height)
  local newNoiseMap = love.image.newImageData(width,height)

  for i = 0, height-1 do
    for j = 0, width-1 do
      local r,g,b = map:getPixel(x+j, y+i)
      newNoiseMap:setPixel(j, i, r,g,b)
    end
  end

  return newNoiseMap
end

noise.circularHeatMap = function(width, height)
  local noiseMap = love.image.newImageData(width, height)
  local point = {width/2, height/2}
  local lowest, highest = 1,0

  for x = 0, width -1 do
    for y = 0, height -1 do
      local distances = {}
      local value = distance(x, y, point[1], point[2])
      table.insert(distances, value)

      table.sort(distances)
      local n = 1
  
      if distances[1] < lowest then lowest = distances[1] end
      if distances[#distances] > highest then highest = distances[#distances] end

      local noise = 1 - distances[n]/highest*3

      local index = y * width + x +1
      noiseMap:setPixel(x, y, noise, noise, noise)
    end
  end

  return noiseMap
end