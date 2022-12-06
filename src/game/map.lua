Map = Class{}

function Map:init(mapDef)
  local layer = mapDef.layers[1]

  local this = {
    mMapDef = mapDef,
    x = 0,
    y = 0,
    textureAtlas = mapDef.tilesets[1].image,
    tiles = layer.data,
    widthInTiles = layer.width,
    heightInTiles = layer.height,
    tileWidth = mapDef.tilesets[1].tilewidth,
    tileHeight = mapDef.tilesets[1].tileheight,
  }

  this.widthInPixels = this.widthInTiles * this.tileWidth
  this.heightInPixels = this.heightInTiles * this.tileHeight
  this.tileIndexes = GenerateTileIndexes(this.mMapDef)

  this.tilesetBatch = love.graphics.newSpriteBatch(mapDef.tilesets[1].image, layer.width * layer.height)
  
  for _, v in ipairs(mapDef.tilesets) do
    if v.name == "collision" then
      this.blockingTile = v.firstgid
      this.horizontalOnlyTile = v.firstgid+1
      this.stairsTile = v.firstgid+2
      this.ladderTile = v.firstgid+3
      this.jumpDownTile = v.firstgid+4
      this.jumpDownLandingTile = v.firstgid+5
      this.jumpAcrossTile = v.firstgid+6
      this.mapLayerTransitionTile = v.firstgid+7
    end
  end

  setmetatable(this, self)

  return this
end

function Map:pointToTile(x, y)
  x = math.max(self.x, x)
  x = math.min(self.x + self.widthInPixels - 1, x)

  y = math.max(self.y, y)
  y = math.min(self.y + self.heightInPixels - 1, y)

  local tileX = math.floor((x - self.x) / self.tileWidth)
  local tileY = math.floor((self.y + y) / self.tileHeight)

  return tileX, tileY
end

function Map:getTile(x, y)
  local tiles = self.mMapDef.layers[1].data

  return tiles[self:coordToIndex(x, y)]
end

function Map:coordToIndex(x, y)
  x = x + 1
  return x + y * self.widthInTiles
end

function Map:render()
  local tileLeft, tileBottom = self:pointToTile(camera.x, camera.y + VIRTUAL_HEIGHT)
  local tileRight, tileTop = self:pointToTile(camera.x + VIRTUAL_WIDTH, camera.y)

  self.tilesetBatch:clear()

  for i = tileTop, tileBottom do
    for j = tileLeft, tileRight do
      local tile = self:getTile(j, i)
      if tile > 0 then
        local texture = love.graphics.newQuad(
          self.tileIndexes[tile][1],
          self.tileIndexes[tile][2],
          self.tileIndexes[tile][3],
          self.tileIndexes[tile][4],
          self.textureAtlas:getDimensions())

        self.tilesetBatch:add(texture, j * self.tileWidth-camera.x, i * self.tileHeight-camera.y)
      end
    end    
  end

  love.graphics.setColor(1,1,1,1)
  love.graphics.draw(self.tilesetBatch,camera.x, camera.y)

  self.tilesetBatch:flush()
end

function Map:tileToScreen(tX, tY)
  local x = - camera.x + self.x + tX * self.tileWidth
  local y = - camera.y + self.y + tY * self.tileHeight
  return x, y
end
