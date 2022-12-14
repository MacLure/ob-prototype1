CharacterNameGenerator = Class{}

function CharacterNameGenerator:new()
  local this = {}
  setmetatable(this, self)

  this.humanMaleNames = {
    "George","Alphonse",
    "Carlos","Sheldon",
    "Edvard","Mahmoud",
    "Simon","Antonio"
  }
  
  this.humanFemaleNames = {
    "Judy","Rania","Samia",
    "Stella","Grace","Henrietta",
    "Aisha","Maria","Lisette","Mitzi",
  }

  return this
end

function CharacterNameGenerator:humanName(gender)
  if gender == "male" then
    return random(self.humanMaleNames)
  else
    return random(self.humanFemaleNames)
  end
end

function CharacterNameGenerator:adjectives(character)
  local adjectives = {}

  for k,v in pairs(words.characterAdjectives) do
    if containsFromArray(v.tags, {character:orderedTraits()[1]}) then
      v.name = k
      table.insert(adjectives, v)
    end
  end

  return adjectives
end

function CharacterNameGenerator:relations(character)
  local relations = {}
  local excludedGender = "male"
  
  if character.gender == "male" then
    excludedGender = "female"
  end

  for k,v in pairs(words.relations) do
    if not containsFromArray(v.tags, {excludedGender}) then
      v.name = k
      table.insert(relations, v)
    end
  end

  return relations
end

function CharacterNameGenerator:concatenateTitle(character, title, location)
  local titleString = title

  if math.random(1,2) == 1 then
    local newString = character.CharacterName.." the "..titleString
    if math.random(1,2) == 1 then
      return self:appendPlaceName(character, newString, location)
    else
      return newString
    end
  else
    return titleString.." "..character.CharacterName
  end
end

function CharacterNameGenerator:nameFirst(character, title)
  return character.CharacterName.." the "..title
end

function CharacterNameGenerator:nameLast(character, title)
  return title.." "..character.CharacterName
end

function CharacterNameGenerator:appendPlaceName(character, title, location)
  local pattern1
  if location then
    pattern1 = location.placeName
  else
    pattern1 = placeNameGenerators[character.region.placeNameIndex]()
  end

  local pattern2 = "the "..words:less(words:substance().name).." "..words:landscape().name

  if math.random(1,2) == 1 then
    return title.." of "..pattern1
  else
    return title.." of "..pattern2
  end
end

function CharacterNameGenerator:nameCharacter(character)
  local factionCharacteristics = character.faction.characteristics
  local animal = factionCharacteristics.animal
  local animalAttributes = factionCharacteristics.animalAttributes
  local animalAttribute = words:attribute().name

  local color = factionCharacteristics.color
  local adjectives = self:adjectives(character)
  local socialGroup = factionCharacteristics.socialGroup
  local relation = random(self:relations(character))

  local location = character.location

  if socialGroup.member then
    relation = words.relations[socialGroup.member]
  end

  if factionCharacteristics.animalAttributes then
    animalAttribute = random(factionCharacteristics.animalAttributes)
  end

  local pattern1 = color.name
  local pattern2 = random(adjectives).name
  local pattern3 = "un"..words:pastParticiple(words:verb())
  local pattern4 = "twice-"..words:pastParticiple(words:verb())
  local pattern24 = "re-"..words:pastParticiple(words:verb())
  local pattern25 = "god-"..words:pastParticiple(words:verb())
  local pattern26 = "still-"..words:pastParticiple(words:verb())
  local pattern27 = color.name.."-"..animalAttribute

  local pattern5 = words:less(random(character.region.substances).name)
  local pattern6 = animal.name
  local pattern14 = animal.name.."-"..words:pastParticiple(words:verb())
  local pattern16 = random(character.region.substances).name.."-"..words:pastParticiple(words:verb())
  local pattern7 = color.name.." "..animal.name
  local pattern8 = random(adjectives).name.." "..animal.name
  local pattern9 = relation.name.." of "..random(character.region.substances).name
  local pattern10 = relation.name.." of "..words:pluralize(animal.name)
  local pattern11 = random(character.region.substances).name.."-"..words:attribute().name.."ed"
  local pattern12 = random(character.region.substances).name.."-"..words:attribute().name.."ed".." "..animal.name
  local pattern13 = animal.name.."-"..words:doer(words:verb())
  local pattern15 = random(character.region.substances).name.." "..words:doer(words:verb())
  local pattern18 = words:less(random(character.region.substances).name).." "..relation.name
  local pattern19 = words:less(random(character.region.substances).name).." "..animal.name
  local pattern20 = words:abstract().name.."-bringer"
  local pattern21 = "bringer of "..words:abstract().name
  local pattern22 = "errant "..animal.name
  local pattern23 = "wandering "..animal.name
  local pattern24 = "font of ".."ABSTRACT"
  local pattern23 = animal.name.."-killer"

  local possibleNames = {
    self:nameFirst(character, pattern1),
    self:nameFirst(character, pattern2),
    self:nameFirst(character, pattern3),
    self:nameFirst(character, pattern4),
    self:nameFirst(character, pattern5),
    self:nameFirst(character, pattern6),
    self:nameFirst(character, pattern14),
    self:nameFirst(character, pattern16),
    self:nameFirst(character, pattern24),
    self:nameFirst(character, pattern25),
    self:nameFirst(character, pattern26),
    self:nameFirst(character, pattern27),

    self:concatenateTitle( character, pattern7, location ),
    self:concatenateTitle( character, pattern8, location ),
    self:concatenateTitle( character, pattern9, location ),
    self:concatenateTitle( character, pattern10, location ),
    self:concatenateTitle( character, pattern11, location ),
    self:concatenateTitle( character, pattern12, location ),
    self:concatenateTitle( character, pattern13, location ),
    self:concatenateTitle( character, pattern14, location ),
    self:concatenateTitle( character, pattern15, location ),
    self:concatenateTitle( character, pattern16, location ),
    self:concatenateTitle( character, pattern18, location ),
    self:concatenateTitle( character, pattern19, location ),
    self:concatenateTitle( character, pattern20, location ),
    self:concatenateTitle( character, pattern21, location ),
    self:concatenateTitle( character, pattern22, location ),
    self:concatenateTitle( character, pattern23, location )
  }


  character.name = random(possibleNames)
end
