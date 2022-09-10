Region = Class{}

function Region:init(params)
  local this = {}
  this.tags = params.tags
  this.landscape = params.landscape
  this.isolatedness = math.random(1,10)
  this.personalTitleGenerator = PersonalTitleGenerator:init(this)

  setmetatable(this, self)
  return this
end

function Region:animals()
  local returnList = {}

  for k,v in pairs(words:animals()) do
    if containsFromArray(v.tags, self.tags) then
      table.insert(returnList, k)
    else
      table.insert(returnList, self:prependLandscape(k))
    end
  end

  return returnList
end

function Region:prependLandscape(string)
  return self.landscape.." "..string
end

function Region:substances(list)
  local returnList = {}

  for k,v in pairs(list) do
    if containsFromArray(v.tags, self.tags) then
      table.insert(returnList, k)
    end
  end
  return returnList
end

function Region:makeCharacter()
  local character = Character:init({region= self})

  return character
end
