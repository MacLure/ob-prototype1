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
  local adjectives = {}

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

function PersonalTitleGenerator:concatenateTitle(name, title)
  local titleString = title

  if math.random(1,2) == 1 then
    local newString = name.." the "..titleString
    if math.random(1,2) == 1 then
      return self:appendPlaceName(newString)
    else
      return newString
    end
  else
    return titleString.." "..name
  end
end

function PersonalTitleGenerator:nameFirst(name, title)
  return name.." the "..title
end

function PersonalTitleGenerator:nameLast(name, title)
  return title.." "..name
end

function PersonalTitleGenerator:appendPlaceName(title)
  local pattern1 = placeName()
  local pattern2 = "the "..words:less(words:substance()).." "..words:landscape()

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
  local pattern5 = words:less(random(character.region:substances(words:substances())))
  local pattern6 = random(animals)
  local pattern14 = random(animals).."-"..words:verb().pp
  local pattern16 = random(character.region:substances(words:substances())).."-"..words:verb().pp

  local pattern7 = words:color().." "..random(animals)
  local pattern8 = random(adjectives).." "..random(animals)
  local pattern9 = random(relations).." of "..random(character.region:substances(words:substances()))
  local pattern10 = random(relations).." of "..words:pluralize(random(animals))
  local pattern11 = random(character.region:substances(words:substances())).."-"..words:simplePP(words:attribute())
  local pattern12 = random(character.region:substances(words:substances())).."-"..words:simplePP(words:attribute()).." "..random(animals)
  local pattern13 = random(animals).."-"..words:verb().doer
  local pattern15 = random(character.region:substances(words:substances())).." "..words:verb().doer
  local pattern18 = words:less(random(character.region:substances(words:substances()))).." "..random(relations)
  local pattern19 = words:less(random(character.region:substances(words:substances()))).." "..random(animals)

  print(self:nameFirst(character.CharacterName, pattern1))
  print(self:nameFirst(character.CharacterName, pattern2))
  print(self:nameFirst(character.CharacterName, pattern3))
  print(self:nameFirst(character.CharacterName, pattern4))
  print(self:nameFirst(character.CharacterName, pattern5))
  print(self:nameFirst(character.CharacterName, pattern6))
  print(self:nameFirst(character.CharacterName, pattern14))
  print(self:nameFirst(character.CharacterName, pattern16))

  print(self:concatenateTitle( character.CharacterName, pattern7 ))
  print(self:concatenateTitle( character.CharacterName, pattern8 ))
  print(self:concatenateTitle( character.CharacterName, pattern9 ))
  print(self:concatenateTitle( character.CharacterName, pattern10 ))
  print(self:concatenateTitle( character.CharacterName, pattern11 ))
  print(self:concatenateTitle( character.CharacterName, pattern12 ))
  print(self:concatenateTitle( character.CharacterName, pattern13 ))
  print(self:concatenateTitle( character.CharacterName, pattern14 ))
  print(self:concatenateTitle( character.CharacterName, pattern15 ))

  print(self:concatenateTitle( character.CharacterName, pattern16 ))
  print(self:concatenateTitle( character.CharacterName, pattern18 ))
  print(self:concatenateTitle( character.CharacterName, pattern19 ))
end
