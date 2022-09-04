MonikerSystem = Class{}

function MonikerSystem:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function MonikerSystem:randomName()
  print(random(gNames.humanNames).." the "..words:color())
  print(random(gNames.humanNames).." the "..words:animal())
  print(random(gNames.humanNames).." the "..words:color().." "..words:animal())
  print(words:color().." "..words:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..words:color().." "..words:animal().." of "..placeName())

  print(random(gNames.humanNames).." the "..words:adjective())
  print(random(gNames.humanNames).." the "..words:adjective().." "..words:animal())
  print(words:adjective().." "..words:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..words:adjective().." "..words:animal().." of "..placeName())

  print(random(gNames.humanNames).." the "..words:landscape().." "..words:animal())
  print(words:landscape().." "..words:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..words:landscape().." "..words:animal().." of "..placeName())

  print(random(gNames.humanNames).." the "..words:substance().." "..words:animal())
  print(words:substance().." "..words:animal().." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..words:relation().." of "..words:substance())
  print(random(gNames.humanNames).." the "..words:relation().." of "..words:pluralize(words:animal()))

  print(random(gNames.humanNames).." the "..words:substance().."-"..words:simplePP(words:attribute()))
  print(random(gNames.humanNames).." the "..words:substance().."-"..words:simplePP(words:attribute()).." "..words:animal().." of "..placeName())

  print(random(gNames.humanNames).." the "..words:animal().."-"..words:verb().doer)
  print(random(gNames.humanNames).." the "..words:animal().."-"..words:verb().pp)

  print(words:animal().." "..words:verb().doer.." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..words:animal().."-"..words:verb().pp)

  print(words:substance().." "..words:verb().doer.." "..random(gNames.humanNames))
  print(random(gNames.humanNames).." the "..words:substance().."-"..words:verb().pp)

  print(random(gNames.humanNames).." the ".."un"..words:verb().pp)
  print(random(gNames.humanNames).." the ".."twice-"..words:verb().pp)

  print(random(gNames.humanNames).." the "..words:less(words:substance()))
  print(random(gNames.humanNames).." of the "..words:less(words:substance()).." "..words:landscape())

  print(random(gNames.humanNames).." the "..words:less(words:substance()).." "..words:relation())
  print(random(gNames.humanNames).." the "..words:less(words:substance()).." "..words:animal())
end
