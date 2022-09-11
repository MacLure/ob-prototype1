Region = Class{}

function Region:init(params)
  local this = {}
  setmetatable(this, self)

  this.tags = params.tags
  this.landscape = params.landscape
  this.isolatedness = math.random(1,10)
  this.placeName = placeName()

  return this
end

function Region:animals()
  local returnList = {}

  for k,v in pairs(words:animals()) do
    if containsFromArray(v.tags, self.tags) then
      table.insert(returnList, k)
    -- else
    --   table.insert(returnList, self:prependLandscape(k))
    end
  end

  return returnList
end

function Region:substances()
  local returnList = {}

  for k,v in pairs(words:substances()) do
    if containsFromArray(v.tags, self.tags) then
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

function Region:makeLocation()
  local location = Location:init({region= self})

  return location
end
