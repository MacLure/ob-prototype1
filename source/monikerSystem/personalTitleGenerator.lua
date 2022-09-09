PersonalTitleGenerator = Class{}

function PersonalTitleGenerator:init(region)
  local this = {}
  this.region = region

  setmetatable(this, self)
  return this
end

function PersonalTitleGenerator:concatenateTitle(title)
  local name = random(gNames.humanNames)
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

function PersonalTitleGenerator:nameFirst(title)
  return random(gNames.humanNames).." the "..title
end

function PersonalTitleGenerator:nameLast(title)
  return title.." "..random(gNames.humanNames)
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

function PersonalTitleGenerator:randomName()
  local pattern1 = words:color()
  local pattern2 = words:adjective()
  local pattern3 = "un"..words:verb().pp
  local pattern4 = "twice-"..words:verb().pp
  local pattern5 = words:less(words:substance())
  local pattern6 = random(self.region:animals(words:animals()))
  local pattern14 = random(self.region:animals(words:animals())).."-"..words:verb().pp
  local pattern16 = words:substance().."-"..words:verb().pp

  local pattern7 = words:color().." "..random(self.region:animals(words:animals()))
  local pattern8 = words:adjective().." "..random(self.region:animals(words:animals()))
  local pattern9 = words:relation().." of "..words:substance()
  local pattern10 = words:relation().." of "..words:pluralize(random(self.region:animals(words:animals())))
  local pattern11 = words:substance().."-"..words:simplePP(words:attribute())
  local pattern12 = words:substance().."-"..words:simplePP(words:attribute()).." "..random(self.region:animals(words:animals()))
  local pattern13 = random(self.region:animals(words:animals())).."-"..words:verb().doer
  local pattern15 = words:substance().." "..words:verb().doer
  local pattern18 = words:less(words:substance()).." "..words:relation()
  local pattern19 = words:less(words:substance()).." "..random(self.region:animals(words:animals()))

  print(self:nameFirst(pattern1))
  print(self:nameFirst(pattern2))
  print(self:nameFirst(pattern3))
  print(self:nameFirst(pattern4))
  print(self:nameFirst(pattern5))
  print(self:nameFirst(pattern6))
  print(self:nameFirst(pattern14))
  print(self:nameFirst(pattern16))

  print(self:concatenateTitle( pattern7 ))
  print(self:concatenateTitle( pattern8 ))
  print(self:concatenateTitle( pattern9 ))
  print(self:concatenateTitle( pattern10 ))
  print(self:concatenateTitle( pattern11 ))
  print(self:concatenateTitle( pattern12 ))
  print(self:concatenateTitle( pattern13 ))
  print(self:concatenateTitle( pattern14 ))
  print(self:concatenateTitle( pattern15 ))

  print(self:concatenateTitle( pattern16 ))
  print(self:concatenateTitle( pattern18 ))
  print(self:concatenateTitle( pattern19 ))
end
