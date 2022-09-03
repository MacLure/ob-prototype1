MonikerSystem = Class{}

function MonikerSystem:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function MonikerSystem:randomName()
  print(random(gNames.humanNames).." the "..self:color())
  print(random(gNames.humanNames).." the "..self:animal())
  print(random(gNames.humanNames).." the "..self:color().." "..self:animal())
  print(self:color().." "..self:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..self:color().." "..self:animal().." of "..self:placeName())

  print(random(gNames.humanNames).." the "..self:adjective())
  print(random(gNames.humanNames).." the "..self:adjective().." "..self:animal())
  print(self:adjective().." "..self:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..self:adjective().." "..self:animal().." of "..self:placeName())

  print(random(gNames.humanNames).." the "..self:landscape().." "..self:animal())
  print(self:landscape().." "..self:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..self:landscape().." "..self:animal().." of "..self:placeName())

  print(random(gNames.humanNames).." the "..self:substance().." "..self:animal())
  print(self:substance().." "..self:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..self:relation().." of "..self:substance())
  print(random(gNames.humanNames).." the "..self:relation().." of "..self:pluralize(self:animal()))

  print(random(gNames.humanNames).." the "..self:substance().."-"..self:simplePP(self:attribute()))
  print(random(gNames.humanNames).." the "..self:substance().."-"..self:simplePP(self:attribute()).." "..self:animal().." of "..self:placeName())


end

function MonikerSystem:placeName()
  local list = {
    gNames.randomJapanesePlace,
    gNames.randomChinesePlace,
    gNames.randomGreekPlace,
    gNames.randomKoreanPlace,
    gNames.randomNahuatlPlace,
    gNames.randomGermanPlace,
    gNames.randomEnglishPlace,
    gNames.randomFrenchPlace,
    gNames.randomArabicPlace,
    gNames.randomBrazilianPlace,
    gNames.randomRussianPlace
  }
  return random(list)()
end

function MonikerSystem:color()
  local list = {
    "red","blue","black","white","yellow","green"
  }
  return random(list)
end

function MonikerSystem:animal()
  local list = {
    "wolf","fox","bear","lion","tiger","maggot","snake","hound","spider"
  }
  return random(list)
end

function MonikerSystem:adjective()
  local list = {
    "foul","fair","great","brave","wise","pious","pure"
  }
  return random(list)
end

function MonikerSystem:landscape()
  local list = {
    "mountain","desert","forest","river"
  }
  return random(list)
end

function MonikerSystem:weather()
  local list = {
    "sun", "star","moon","wind","snow","rain","storm","winter"
  }
  return random(list)
end

function MonikerSystem:relation()
  local list = {
    "brother","sister","father","mother","son","daughter","servant","hand","keeper","scourge",
    "lord","lady","prince","princess","priest","priestess","tyrant"
  }
  return random(list)
end

function MonikerSystem:pluralize(word)
  return word.."s"
end

function MonikerSystem:substance()
  local list = {
    "glass","iron","stone","gold","dirt","dung","moss","ice","fire","flame"
  }
  return random(list)
end

function MonikerSystem:attribute()
  local list = {
    "heart","soul","eye","face","name","tongue"
  }
  return random(list)
end

function MonikerSystem:simplePP(word)
  local output = word
  if string.sub(output, -1) ~= "e" then
    output = output.."e"
  end
  return output.."d"
end
