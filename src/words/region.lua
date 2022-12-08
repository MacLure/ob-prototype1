Region = Class{}

function Region:new(params)
  local this = {}
  setmetatable(this, self)

  if not params then
    params = {}
  end
  -- MODIFIERS
  this.topology = math.random(1,10)
  this.temperature = math.random(1,10)
  this.vegetation = math.random(1,10)

  this.integratedness = math.random(1,10)
  this.population = math.random(1,10)
  this.prosperity = math.random(1,10)
  this.populationStatement = ""

  this.tags = params.tags or {}
  this.landscape = params.landscape


  if this.temperature <= 4 then
    table.insert(this.tags, "cold")
  end

  if this.temperature >= 6 and this.landscape == "forest" then
    this.landscape = "jungle"
  end

  -- NAMING
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
      this.regionStatement = "frontier region"
    else
      this.regionStatement = "untouched region"
    end
  end

  this.animals = {}

  for k,animal in pairs(words.animals) do
    -- if containsFromArray(animal.tags, this.landscape) then
    --   animal.name = k
    --   table.insert(this.animals, animal)
    -- end

    if contains(animal.tags, this.landscape) then
      animal.name = k
      table.insert(this.animals, animal)
    end
  end

  this.substances = {}
  for k,substance in pairs(words.substances) do
    -- if containsFromArray(v.tags, this.tags) then
    --   v.name = k
    --   table.insert(this.substances, v)
    -- end
    if contains(substance.tags, this.landscape) then
      substance.name = k
      table.insert(this.substances, substance)
    end
  end

  this.golems = {}
  for k,v in pairs(this.substances) do
    if v.golem == true then
      table.insert(this.golems, v.name.." golem")
    end
  end

  -- LOCATIONS

  if this.population <= 4 then
    this.wildLocations = 4
    this.villages = 5
    this.towns = 1
    this.cities = 0
    this.megacities = 0
  elseif this.population <= 8 then
    this.wildLocations = 4
    this.villages = 3
    this.towns = 5
    this.cities = 2
    this.megacities = 0
  else
    this.wildLocations = 4
    this.villages = 2
    this.towns = 5
    this.cities = 2
    this.megacities = 1
  end

  -- FACTIONS

  this.availableAttributes = {}
    
    -- cloned

  this.factions = {
    this:makeFaction(),
    this:makeFaction()
  }


  -- CHARACTERS
  this.characters = {}


  for i, faciton in pairs(this.factions) do
    for i=1, 5, 1 do
      table.insert(this.characters, faciton:makeCharacter())
    end
  end

  -- UNDECIDED
  -- values: learning, light, dark, fire, industry
  -- stories:
  -- entrenched faction vs. internal challenger faction
  --  rebellion/insurrection/uprising/movement/undead
  --  invading faction
  --  raiders/other culture
  -- two external factions competing for hegemony

  return this
end

function Region:prependLandscape(string)
  return self.landscape.." "..string
end

function Region:makeCharacter()
  local character = Character:new({region= self})

  return character
end

function Region:makeFaction()
  local faction = Faction:new({region= self})

  return faction
end

function Region:makeSettlement(settlementTypeName)
  settlementType = words.settlements[settlementTypeName]
  settlementType.name = settlementTypeName

  return Location:new(
    {
      region = self,
      settlementType = settlementType,
      faction = random(self.factions)
    }
  )
end

function Region:makeWildLocation()
  return Location:new(
    {
      region = self,
      settlementType = "wild",
      faction = random(self.factions)
    }
  )
end

function Region:printHeadline()
  print("-----------------------------------------------------------------")
  print(self.placeName..", "..self.regionStatement.." in the "..self.landscape)
  print("")
  print("integratedness: "..self.integratedness, "population: "..self.population, "prosperity: "..self.prosperity)
  print("topology: "..self.topology, "temperature: "..self.temperature, "vegetation: "..self.vegetation)
  print("-----------------------------------------------------------------")
  print("")
  print("FACTIONS:")
  for i, faction in pairs(self.factions) do
    print("----- "..faction.name.." -----")
    for j, character in pairs(faction.characters) do
      character:printDetails()
    end
    print("")
  end
end

function Region:printCharacters()
  print("CHARACTERS:")
  for k, character in pairs(self.characters) do
    character:printDetails()
  end
end

function Region:printLocations()
  print("LOCATIONS:")
  if math.random(1,2) == 1 then
    occupyingFaction = faction1
  else
    occupyingFaction = faction2
  end
  for i=1, self.villages, 1 do
    local location = self:makeSettlement("village")
    location:printDetails()
  end
  for i=1, self.towns, 1 do
    local location = self:makeSettlement("town")
    location:printDetails()
  end
  for i=1, self.cities, 1 do
    local location = self:makeSettlement("city")
    location:printDetails()
  end
  for i=1, self.megacities, 1 do
    local location = self:makeSettlement("city")
    location:printDetails()
  end
  for i=1, self.wildLocations, 1 do
    local location = self:makeWildLocation()
    location:printDetails()
  end
    -- print("occupied by ".. occupyingFaction.name)
end
