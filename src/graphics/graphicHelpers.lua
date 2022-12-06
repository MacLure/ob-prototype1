
function GradientCircle(innerColor, outerColor)
  local image = whitePixel
	local segments = 40

  local r1, g1, b1 = innerColor[1],innerColor[2],innerColor[3]
  local r2, g2, b2 = outerColor[1],outerColor[2],outerColor[3]

	local vertices = {}

	table.insert(vertices, { 0, 0, 0.5, 0.5, r1, g1, b1 })
	
	for i=0, segments do
		local angle = (i / segments) * math.pi * 2
		local x = math.cos(angle)
		local y = math.sin(angle)
		local u = (x + 1) * 0.5
		local v = (y + 1) * 0.5
		
		table.insert(vertices, {x, y, u, v, r2, g2, b2})
	end
	
	local mesh = love.graphics.newMesh(vertices, "fan")
  mesh:setTexture(image)

  return mesh
end

function gradientRect(color1, color2, color3, color4)
  local image = whitePixel
  local r1, g1, b1, a1 = color1[1],color1[2],color1[3], color1[4] or 1
  local r2, g2, b2, a2 = color2[1],color2[2],color2[3], color2[4] or 1
  local r3, g3, b3, a3 = color3[1],color3[2],color3[3], color3[4] or 1
  local r4, g4, b4, a4 = color4[1],color4[2],color4[3], color4[4] or 1

	local vertices = {
		{ 0, 0, 0, 0, r1, g1, b1, a1 }, -- top-left 
		{ image:getWidth(), 0, 1, 0, r2, g2, b2, a2 }, -- top-right
		{ image:getWidth(), image:getHeight(), 1, 1, r3, g3, b3, a3 }, -- bottom-right
		{ 0, image:getHeight(), 0, 1, r4, g4, b4, a4 }, -- bottom-left
	}

	mesh = love.graphics.newMesh(vertices, "fan")
  mesh:setTexture(image)
  
  return mesh
end

function diamond(mode, origin, size)
  local adjust = 0.9
  local top = Vector:new(origin.x, origin.y-size)
  local right = Vector:new(origin.x+size, origin.y)
  local bottom = Vector:new(origin.x, origin.y+size)
  local left = Vector:new(origin.x-size, origin.y)

  love.graphics.polygon(
    mode,
    top.x, top.y, 
    right.x, right.y,
    bottom.x, bottom.y,
    left.x, left.y
  )
end

function gradientTriangle(color1, color2, color3)
  local image = whitePixel
  local r1, g1, b1, a1 = color1[1],color1[2],color1[3], color1[4] or 1
  local r2, g2, b2, a2 = color2[1],color2[2],color2[3], color2[4] or 1
  local r3, g3, b3, a3 = color3[1],color3[2],color3[3], color3[4] or 1

	local vertices = {
		{ 0, 0, 0, 0, r1, g1, b1, a1 }, -- top-left 
		{ image:getWidth(), 0, 1, 0, r2, g2, b2, a2 }, -- top-right
		{ image:getWidth(), image:getHeight(), 1, 1, r3, g3, b3, a3 }, -- bottom-right
	}

	mesh = love.graphics.newMesh(vertices, "fan")
  mesh:setTexture(image)
  
  return mesh
end
