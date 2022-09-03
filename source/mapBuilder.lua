function mapBuilder(noiseMap)
  local map = {
    version = "1.2",
    luaversion = "5.1",
    tiledversion = "1.2.3",
    orientation = "orthogonal",
    renderorder = "left-down",
    width = 100,
    height = 100,
    tilewidth = 8,
    tileheight = 8,
    nextlayerid = 2,
    nextobjectid = 1,
    properties = {},
    tilesets = {
      {
        name = "fieldMap",
        firstgid = 1,
        filename = "fieldMap.tsx",
        tilewidth = 8,
        tileheight = 8,
        spacing = 0,
        margin = 0,
        columns = 16,
        image = gTileSets['field'],
        imagewidth = 128,
        imageheight = 376,
        tileoffset = {
          x = 0,
          y = 0
        },
        grid = {
          orientation = "orthogonal",
          width = 8,
          height = 8
        },
        properties = {},
        terrains = {},
        tilecount = 752,
        tiles = {}
      }
    },
    layers = {
      {
        type = "tilelayer",
        id = 1,
        name = "Tile Layer 1",
        x = 0,
        y = 0,
        width = 100,
        height = 100,
        visible = true,
        opacity = 1,
        offsetx = 0,
        offsety = 0,
        properties = {},
        encoding = "lua",
        data = {}
      }
    }
  }

  local tileMap = {}

  local width = noiseMap:getWidth()
  local height = noiseMap:getHeight()

  for i = 0, height-1 do
    for j = 0, width-1 do
      local r,g,b = noiseMap:getPixel(j, i)
      local tile = 0
      if r < 0.20 then
        tile = 3
      elseif r < 0.30 then
        tile = 2
      else
        tile = 4
        if i == math.floor(height/2) and j == math.floor(width/2) then
          tile = settlement.generate()
        end
      end

      table.insert(tileMap, tile)
    end
  end

  map.layers[1].width = width
  map.layers[1].height = height

  map.layers[1].data = tileMap

  return map
end