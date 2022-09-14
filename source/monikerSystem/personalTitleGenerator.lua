PersonalTitleGenerator = Class{}

function PersonalTitleGenerator:init()
  local this = {}

  setmetatable(this, self)
  return this
end

function PersonalTitleGenerator:animals(character)
  local regionAnimals = character.region:animals()
  return regionAnimals
end

function PersonalTitleGenerator:adjectives(character)
  local adjectives = {""}

  for k,v in pairs(words:characterAdjectives()) do
    if containsFromArray(v.tags, {character:orderedTraits()[1]}) then
      table.insert(adjectives, k)
    end
  end

  return adjectives
end

function PersonalTitleGenerator:relations(character)
  local relations = {}
  local excludedGender = "male"
  
  if character.gender == "male" then
    excludedGender = "female"
  end

  for k,v in pairs(words:relations()) do
    if not containsFromArray(v.tags, {excludedGender}) then
      table.insert(relations, k)
    end
  end

  return relations
end

function PersonalTitleGenerator:concatenateTitle(character, title)
  local titleString = title

  if math.random(1,2) == 1 then
    local newString = character.CharacterName.." the "..titleString
    if math.random(1,2) == 1 then
      return self:appendPlaceName(character, newString)
    else
      return newString
    end
  else
    return titleString.." "..character.CharacterName
  end
end

function PersonalTitleGenerator:nameFirst(character, title)
  return character.CharacterName.." the "..title
end

function PersonalTitleGenerator:nameLast(character, title)
  return title.." "..character.CharacterName
end

function PersonalTitleGenerator:appendPlaceName(character, title)
  local pattern1 = placeNameGenerators[character.region.placeNameIndex]()
  local pattern2 = "the "..words:less(words:substance().name).." "..words:landscape()

  if math.random(1,2) == 1 then
    return title.." of "..pattern1
  else
    return title.." of "..pattern2
  end
end

function PersonalTitleGenerator:randomName(character)
  local animals = self:animals(character)
  local adjectives = self:adjectives(character)
  local relations = self:relations(character)

  local pattern1 = words:color()
  local pattern2 = random(adjectives)
  local pattern3 = "un"..words:verb().pp
  local pattern4 = "twice-"..words:verb().pp
  local pattern5 = words:less(random(character.region:substances()).name)
  local pattern6 = random(animals)
  local pattern14 = random(animals).."-"..words:verb().pp
  local pattern16 = random(character.region:substances()).name.."-"..words:verb().pp
  local pattern7 = words:color().." "..random(animals)
  local pattern8 = random(adjectives).." "..random(animals)
  local pattern9 = random(relations).." of "..random(character.region:substances()).name
  local pattern10 = random(relations).." of "..words:pluralize(random(animals))
  local pattern11 = random(character.region:substances()).name.."-"..words:simplePP(words:attribute())
  local pattern12 = random(character.region:substances()).name.."-"..words:simplePP(words:attribute()).." "..random(animals)
  local pattern13 = random(animals).."-"..words:verb().doer
  local pattern15 = random(character.region:substances()).name.." "..words:verb().doer
  local pattern18 = words:less(random(character.region:substances()).name).." "..random(relations)
  local pattern19 = words:less(random(character.region:substances()).name).." "..random(animals)
  local pattern20 = words:abstract().."-bringer"
  local pattern21 = "bringer of "..words:abstract()
  local pattern22 = "errant "..random(animals)
  local pattern23 = "wandering "..random(animals)
  local pattern24 = "font of ".."SUBSTANCE"
  local pattern23 = random(animals).."-killer"

  local possibleNames = {
    self:nameFirst(character, pattern1),
    self:nameFirst(character, pattern2),
    self:nameFirst(character, pattern3),
    self:nameFirst(character, pattern4),
    self:nameFirst(character, pattern5),
    self:nameFirst(character, pattern6),
    self:nameFirst(character, pattern14),
    self:nameFirst(character, pattern16),
    self:concatenateTitle( character, pattern7 ),
    self:concatenateTitle( character, pattern8 ),
    self:concatenateTitle( character, pattern9 ),
    self:concatenateTitle( character, pattern10 ),
    self:concatenateTitle( character, pattern11 ),
    self:concatenateTitle( character, pattern12 ),
    self:concatenateTitle( character, pattern13 ),
    self:concatenateTitle( character, pattern14 ),
    self:concatenateTitle( character, pattern15 ),
    self:concatenateTitle( character, pattern16 ),
    self:concatenateTitle( character, pattern18 ),
    self:concatenateTitle( character, pattern19 ),
    self:concatenateTitle( character, pattern20 ),
    self:concatenateTitle( character, pattern21 ),
    self:concatenateTitle( character, pattern22 ),
    self:concatenateTitle( character, pattern23 )

  }
  return random(possibleNames)
end
