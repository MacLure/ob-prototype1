Region = Class{}

function Region:init(params)
  local this = {}
  setmetatable(this, self)

  this.tags = params.tags
  this.landscape = params.landscape

  this.topology = math.random(1,10)
  this.temperature = math.random(1,10)
  this.vegetation = math.random(1,10)

  if this.temperature <= 4 then
    table.insert(this.tags, "cold")
  end

  this.integratedness = math.random(1,10)
  this.population = math.random(1,10)
  this.prosperity = math.random(1,10)
  this.populationStatement = ""

  this.placeNameIndex = math.random(1, #placeNameGenerators)
  this.placeName = placeNameGenerators[this.placeNameIndex]()

  if this.integratedness >= 8 then
    if this.population >= 8 then
      this.regionStatement = "capitol region"
    elseif this.population >= 4 then
      this.regionStatement = "great provincial region"
    else
      this.regionStatement = "depopulated region"
    end
  elseif this.integratedness >= 4 then
    if this.population >= 8 then
      this.regionStatement = "independent kingdom"
    elseif this.population >= 4 then
      this.regionStatement = "minor provincial region"
    else
      this.regionStatement = "unclaimed lands"
    end
  else
    if this.population >= 8 then
      this.regionStatement = "hidden kingdom"
    elseif this.population >= 4 then
      this.regionStatement = "fronteir region"
    else
      this.regionStatement = "untouched region"
    end
  end

  -- values: learning, light, dark, fire, industry

-- 1-1 - unpopulated
-- 1-5 - fronteir region
-- 1-10 hidden kingdom

-- 5-1 - unclaimed lands
-- 5-5 - lesser province
-- 5-10 independent kingdom

-- 10-1 - depopulated region
-- 10-5 - depopulated region
-- 10-10 - capitol

-- 1,1,-10 unpopulated, unconnected, bad fortunes - untouched foul lands
-- 1,1,0 unpopulated, unconnected, neutral fortunes - wild lands
-- 1,1,10 unpopulated, unconnected, rich - untouched sacred lands
-- 1,5,-10 unpopulated, connected, bad fortunes - unpopulated/deserted province
-- 1,5,0 unpopulated, connected, neutral fortunes - 
-- 1,5,10 unpopulated, connected, rich -
-- 1,10,-10 unpopulated, very connected, bad fortunes - unpopulated/deserted heartland
-- 1,10,0 unpopulated, very connected, neutral fortunes - abandoned province
-- 1,10,10 unpopulated, very connected, rich - 

-- 5,1,-10 populated, unconnected, bad fortunes
-- 5,1,0 populated, unconnected, neutral fortunes - isolated kingdom
-- 5,1,10 populated, unconnected, rich - wealthy isolated kingdom
-- 5,5,-10 populated, connected, bad fortunes - plague/war/famine-stricken
-- 5,5,0 populated, connected, neutral fortunes - province
-- 5,5,10 populated, connected, rich - rich province
-- 5,10,-10 populated, very connected, bad fortunes - plague/war/famine-stricken
-- 5,10,0 populated, very connected, neutral fortunes - heartland
-- 5,10,10 populated, very connected, rich - rich heartland

-- 10,1,-10 highly populated, unconnected, bad fortunes
-- 10,1,0 highly populated, unconnected, neutral fortunes
-- 10,1,10 highly populated, unconnected, rich
-- 10,5,-10 highly populated, connected, bad fortunes - plague/war/famine-stricken
-- 10,5,0 highly populated, connected, neutral fortunes
-- 10,5,10 highly populated, connected, rich
-- 10,10,-10 highly populated, very connected, bad fortunes - plague/war/famine-stricken
-- 10,10,0 highly populated, very connected, neutral fortunes
-- 10,10,10 highly populated, very connected, rich - 






  return this
end

function Region:animals()
  local returnList = {}

  for k,v in pairs(words.animals) do
    if containsFromArray(v.tags, self.tags) then
      v.name = k
      table.insert(returnList, v)
    -- else
    --   table.insert(returnList, self:prependLandscape(k))
    end
  end

  return returnList
end

function Region:substances()
  local returnList = {}

  for k,v in pairs(words.substances) do
    if containsFromArray(v.tags, self.tags) then
      v.name = k
      table.insert(returnList, v)
    end
  end

  return returnList
end

function Region:golems()
  local returnList = {}

  for k,v in pairs(self:substances()) do
    if v.golem == true then
      table.insert(returnList, v.name.." golem")
    end
  end

  return returnList
end

function Region:prependLandscape(string)
  return self.landscape.." "..string
end

function Region:makeCharacter()
  local character = Character:init({region= self})

  return character
end


function Region:makeFaction()
  local faction = Faction:init({region= self})

  return faction
end


function Region:makeLocation()
  local location = Location:init({region= self})

  return location
end
