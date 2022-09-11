WordRepository = Class{}

function WordRepository:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function WordRepository:colors()
  return {
    ["red"] = { tags = {} },
    ["blue"] = { tags = {} },
    ["black"] = { tags = {} },
    ["white"] = { tags = {} },
    ["yellow"] = { tags = {} },
    ["green"] = { tags = {} },
    ["golden"] = { tags = {} },
    ["silver"] = { tags = {} },
  }
end

function WordRepository:color() return randomFromKvp(self:colors()).name end

function WordRepository:characterAdjectives()
  return {
    ["foul"] = { tags = {} },
    ["fair"] = { tags = {} },
    ["splendid"] = { tags = {} },
    ["great"] = { tags = {} },
    ["brave"] = { tags = {"strength"} },
    ["strong"] = { tags = {"strength"} },
    ["stout"] = { tags = {"strength"} },
    ["wise"] = { tags = {"int"} },
    ["learned"] = { tags = {"int"} },
    ["pious"] = { tags = {"faith"} },
    ["devout"] = { tags = {"faith"} },
    ["pure"] = { tags = {} },
    ["divine"] = { tags = {} },
    ["lost"] = { tags = {} },
    ["mad"] = { tags = {} },
    ["ancient"] = { tags = {} },
    ["elder"] = { tags = {} },
    ["forgotten"] = { tags = {} },
    ["eternal"] = { tags = {} },
    ["heretic"] = { tags = {} },
  }
end

function WordRepository:characterAdjective() return randomFromKvp(self:characterAdjectives()) end

function WordRepository:landscapes()
  return {
    ["mountain"] = { tags = {} },
    ["desert"] = { tags = {} },
    ["forest"] = { tags = {} },
    ["jungle"] = { tags = {} },
    ["river"] = { tags = {} },
    ["swamp"] = { tags = {} },
    ["marsh"] = { tags = {} },
    ["moor"] = { tags = {} },
    ["bay"] = { tags = {} },
    ["atoll"] = { tags = {} },
    ["island"] = { tags = {} },
  }
end

function WordRepository:landscape() return randomFromKvp(self:landscapes()).name end

function WordRepository:meteorologyList()
  local list = {
    ["snow"] = { tags = {"cold"} },
    ["frost"] = { tags = {"cold"} },
    ["winter"] = { tags = {"cold"} },
    ["star"] = { tags = {} },
    ["moon"] = { tags = {} },
    ["night"] = { tags = {} },
    ["sun"] = { tags = {} },
    ["wind"] = { tags = {} },
    ["rain"] = { tags = {} },
    ["storm"] = { tags = {} },
    ["sandstorm"] = { tags = {} },
    ["cloud"] = { tags = {} },
    ["dew"] = { tags = {} },
    ["fog"] = { tags = {"forest", "swamp"} },
    ["mist"] = { tags = {"forest", "swam", "mountain"} },
  }
  for k,v in pairs(list) do
    v.name = k
  end
  return list
end

function WordRepository:meteorology() return randomFromKvp(self:meteorologyList()).name end

function WordRepository:settlements()
  return {
    ["city"] = { tags = {} },
    ["town"] = { tags = {} },
    ["village"] = { tags = {} },
    ["castle"] = { tags = {} },
    ["fort"] = { tags = {} },
    ["estate"] = { tags = {} },
    ["necropolis"] = { tags = {} },
  }
end

function WordRepository:settlement() return randomFromKvp(self:settlements()).name end

function WordRepository:settlementDescriptors()
  return {
    ["port"] = { tags = {} },
    ["trading"] = { tags = {} },
    ["mining"] = { tags = {} },
    ["farming"] = { tags = {} },
    ["holy"] = { tags = {} },
    ["royal"] = { tags = {} },
  }
end

function WordRepository:settlementDescriptor() return randomFromKvp(self:settlementDescriptors()).name end

function WordRepository:buildings()
  return {
    ["palace"] = { tags = {} },
    ["university"] = { tags = {} },
    ["library"] = { tags = {} },
    ["tower"] = { tags = {} },
    ["dungeon"] = { tags = {} },
    ["tomb"] = { tags = {} },
    ["manor"] = { tags = {} },
    ["church"] = { tags = {} },
    ["temple"] = { tags = {} },
    ["chapel"] = { tags = {} },
    ["monestary"] = { tags = {} },
    ["abbey"] = { tags = {} },
    ["shrine"] = { tags = {} },
    ["mine"] = { tags = {} },
    ["quarry"] = { tags = {} },
    ["mill"] = { tags = {} },
    ["farm"] = { tags = {} },
    ["sanctuary"] = { tags = {} },
    ["bridge"] = { tags = {} },
    ["ruins"] = { tags = {} },
  }
end

function WordRepository:building() return randomFromKvp(self:buildings()).name end

function WordRepository:dwellings()
  return {
    ["den"] = { tags = {} },
    ["hovel"] = { tags = {} },
    ["lair"] = { tags = {} },
    ["cave"] = { tags = {} },
    ["hideout"] = { tags = {} },
    ["resting place"] = { tags = {} },
    ["grave"] = { tags = {} },
    ["gathering place"] = { tags = {} },
    ["encampment"] = { tags = {} },
    ["garden"] = { tags = {} },
    ["grotto"] = { tags = {} },
  }
end

function WordRepository:dwelling() return randomFromKvp(self:dwellings()).name end

function WordRepository:animals()
  return {
    ["lion"] = { tags = {}, attributes={"mane","claw","tooth","paw"} },
    ["lioness"] = { tags = {}, attributes={"mane","claw","tooth","paw"}, gender={"female"} },
    ["tiger"] = { tags = {}, attributes={"claw","tooth","paw"} },
    ["tigress"] = { tags = {}, attributes={"claw","tooth","paw"}, gender={"female"} },
    ["snake"] = { tags = {}, attributes={"fang"} },
    ["serpent"] = { tags = {}, attributes={"fang","tongue"} },
    ["hawk"] = { tags = {}, attributes={"talon","feather"} },
    ["hound"] = { tags = {}, attributes={"tooth"} },
    ["spider"] = { tags = {}, attributes={"web"} },
    ["slug"] = { tags = {}, attributes={} },
    ["leech"] = { tags = {}, attributes={} },
    ["maggot"] = { tags = {}, attributes={} },
    ["frog"] = { tags = {}, attributes={} },
    ["toad"] = { tags = {}, attributes={} },
    ["viper"] = { tags = {}, attributes={"fang"} },
    ["scorpion"] = { tags = {"desert"}, attributes={"claw"} },
    ["vulture"] = { tags = {"desert"}, attributes={"talon"} },
    ["wolf"] = { tags = {"forest"}, attributes={"claw","fang","paw"} },
    ["she-wolf"] = { tags = {"forest"}, attributes={"claw","fang","paw"}, gender={"female"} },
    ["bear"] = { tags = {"forest"}, attributes={"claw"} },
    ["fox"] = { tags = {"forest"}, attributes={"tail"} },
    ["elk"] = { tags = {"forest"}, attributes={"antler"} },
    ["shark"] = { tags = {"water"}, attributes={"fin","tooth"} },
    ["fish"] = { tags = {"water"}, attributes={} },
    ["squid"] = { tags = {"water"}, attributes={"beak"} },
    ["octopus"] = { tags = {"water"}, attributes={"tentacle"} },
    ["crab"] = { tags = {"water"}, attributes={"claw"} },
    ["lobster"] = { tags = {"water"}, attributes={"claw"} },
    ["barricuda"] = { tags = {"water"}, attributes={"tooth"} },
    ["whale"] = { tags = {"water"}, attributes={} },
  }
end

function WordRepository:animal() return randomFromKvp(self:animals()) end

function WordRepository:attributes()
  return {
    ["heart"] = { tags = {} },
    ["soul"] = { tags = {} },
    ["eye"] = { tags = {} },
    ["face"] = { tags = {} },
    ["name"] = { tags = {} },
    ["blood"] = { tags = {} },
    ["skull"] = { tags = {} },
    ["bone"] = { tags = {} },
  }
end

function WordRepository:attribute() return randomFromKvp(self:attributes()).name end

function WordRepository:attires()
  return {
    ["mask"] = { tags = {} },
    ["hood"] = { tags = {} },
    ["cloak"] = { tags = {} },
    ["veil"] = { tags = {} },
    ["glove"] = { tags = {} },
  }
end

function WordRepository:attire() return randomFromKvp(self:attires()).name end


function WordRepository:equipments()
  return {
    ["crown"] = { tags = {} },
    ["arrow"] = { tags = {} },
    ["sword"] = { tags = {} },
    ["spear"] = { tags = {} },
    ["mace"] = { tags = {} },
    ["hammer"] = { tags = {} },
    ["shield"] = { tags = {} },
    ["bow"] = { tags = {} },
    ["banner"] = { tags = {} },
    ["lance"] = { tags = {} },
  }
end

function WordRepository:equipment() return randomFromKvp(self:equipments()).name end

function WordRepository:abstracts()
  local list = {
    ["war"] = { tags = {}},
    ["battle"] = { tags = {} },
    ["death"] = { tags = {} },
    ["shadow"] = { tags = {} },
    ["rot"] = { tags = {} },
    ["disease"] = { tags = {} },
    ["plague"] = { tags = {} },
    ["perdition"] = { tags = {} },
    ["pox"] = { tags = {} },
    ["destruction"] = { tags = {} },
    ["darkness"] = { tags = {} },
  }
end

function WordRepository:abstract() return randomFromKvp(self:abstracts()).name end

function WordRepository:crafts()
  return {
    ["jewel"] = { tags = {}, golem=true},
    ["lace"] = { tags = {} },
    ["frill"] = { tags = {} },
    ["silk"] = { tags = {} },
    ["glass"] = { tags = {} },
  }
end

function WordRepository:craft() return randomFromKvp(self:crafts()).name end


function WordRepository:substances()
  local list = {
    ["moss"] = { tags = {"forest"}, golem=true},
    ["fern"] = { tags = {"forest"} },
    ["tree"] = { tags = {"forest"} },
    ["root"] = { tags = {"forest"} },
    ["leaf"] = { tags = {"forest"} },
    ["briar"] = { tags = {"forest"} },
    ["thorn"] = { tags = {"forest"} },
    ["thistle"] = { tags = {"forest"} },
    ["branch"] = { tags = {"forest"} },
    ["wood"] = { tags = {"forest"}, golem=true},
    ["timber"] = { tags = {"forest"} },
    ["soil"] = { tags = {"forest"} },
    ["ice"] = { tags = {"cold"}, golem=true},
    ["snow"] = { tags = {"cold"} },
    ["fire"] = { tags = {"fire"} },
    ["ash"] = { tags = {"fire","death"}, golem=true},
    ["grave"] = { tags = {"death"} },
    ["tomb"] = { tags = {"death"} },
    ["crypt"] = { tags = {"death"} },
    ["tide"] = { tags = {"water"} },
    ["wave"] = { tags = {"water"} },
    ["coral"] = { tags = {"water"}, golem=true},
    ["driftwood"] = { tags = {"water"}, golem=true},
    ["kelp"] = { tags = {"water"} },
    ["pearl"] = { tags = {"water"} },
    ["barnacle"] = { tags = {"water", golem=true} },
    ["sand"] = { tags = {"desert"}, golem=true},
    ["mangrove"] = { tags = {"swamp"}, golem=true},
    ["reed"] = { tags = {"swamp"}, golem=true},
    ["flame"] = { tags = {} },
    ["plume"] = { tags = {} },
    ["bush"] = { tags = {} },
    ["salt"] = { tags = {} },
    ["honey"] = { tags = {} },
    ["rose"] = { tags = {} },
    ["poison"] = { tags = {} },
    ["venom"] = { tags = {} },
    ["bile"] = { tags = {} },
    ["iron"] = { tags = {}, golem=true},
    ["stone"] = { tags = {}, golem=true},
    ["gold"] = { tags = {}, golem=true},
    ["dirt"] = { tags = {} },
    ["dung"] = { tags = {} },
    ["clay"] = { tags = {}, golem=true},
    ["jade"] = { tags = {}, golem=true},
    ["silver"] = { tags = {}, golem=true },
  }

  for k,v in pairs(list) do
    v.name = k
  end

  return list
end

function WordRepository:substance() return randomFromKvp(self:substances()) end

function WordRepository:titles()
  return {
    ["servant"] = { tags = {} },
    ["hand"] = { tags = {} },
    ["lord"] = { tags = {}, gender = {"male"} },
    ["lady"] = { tags = {}, gender = {"female"} },
    ["prince"] = { tags = {}, gender = {"male"} },
    ["princess"] = { tags = {}, gender = {"female"} },
    ["tyrant"] = { tags = {} },
    ["ward"] = { tags = {} },
    ["warden"] = { tags = {} },
    ["patron"] = { tags = {} },
    ["marquis"] = { tags = {} },
    ["emir"] = { tags = {} },
    ["khan"] = { tags = {} },
    ["elector"] = { tags = {} },
    ["satrap"] = { tags = {} },
    ["governor"] = { tags = {} },
    ["boyar"] = { tags = {} },
    ["jarl"] = { tags = {} },
    ["earl"] = { tags = {} },
    ["margrave"] = { tags = {} },
    ["thane"] = { tags = {} },
    ["magistrate"] = { tags = {} },
    ["pasha"] = { tags = {} },
    ["bey"] = { tags = {} },
    ["pasha"] = { tags = {} },
    ["shah"] = { tags = {} },
    ["raja"] = { tags = {} },
    ["prefect"] = { tags = {} },
    ["cardinal"] = { tags = {"faith"} },
    ["patriarch"] = { tags = {}, gender = {"male"} },
    ["matriarch"] = { tags = {}, gender = {"female"} },
    ["captain"] = { tags = {"water"} },
    ["navigator"] = { tags = {"water"} },
  }
end

function WordRepository:title() return randomFromKvp(self:titles()) end

function WordRepository:relations()
  return {
    ["brother"] = { tags = {}, gender = {"male"} },
    ["sister"] = { tags = {}, gender = {"female"} },
    ["father"] = { tags = {}, gender = {"male"} },
    ["mother"] = { tags = {}, gender = {"female"} },
    ["son"] = { tags = {}, gender = {"male"} },
    ["daughter"] = { tags = {}, gender = {"female"} },
    ["scourge"] = { tags = {} },
    ["consort"] = { tags = {} },
    ["husband"] = { tags = {}, gender = {"male"} },
    ["wife"] = { tags = {}, gender = {"female"} },
    ["butcher"] = { tags = {} },
    ["heretic"] = { tags = {"faith"} },
    ["defender"] = { tags = {"knight"} },
    ["brute"] = { tags = {"strength"} },
    ["seer"] = { tags = {} },
    ["oracle"] = { tags = {} },
    ["sheppard"] = { tags = {"faith"} },
  }
end

function WordRepository:relation() return randomFromKvp(self:relations()).name end

function WordRepository:socialGroups()
  return {
    ["brotherhood"] = { tags = {}, gender = {"male"} },
    ["sisterhood"] = { tags = {}, gender = {"female"} },
    ["priesthood"] = { tags = {}, gender = {"male"} },
    ["order"] = { tags = {} },
    ["order"] = { tags = {} },
    ["house"] = { tags = {} },
    ["circle"] = { tags = {} },
    ["clan"] = { tags = {} },
    ["tribe"] = { tags = {} },
    ["horde"] = { tags = {} },
  }
end

function WordRepository:socialGroup() return randomFromKvp(self:socialGroups()).name end

function WordRepository:roles()
  return {
    ["bandit"] = { tags = {} },
    ["raider"] = { tags = {} },
    ["pirate"] = { tags = {} },
    ["guard"] = { tags = {} },
    ["spy"] = { tags = {} },
    ["thief"] = { tags = {} },
    ["rebel"] = { tags = {} },
    ["pilgrim"] = { tags = {"faith"} },
    ["mercenary"] = { tags = {} },
    ["highwayman"] = { tags = {}, gender = {"male"} },
    ["highwaywoman"] = { tags = {}, gender = {"female"} },
    ["grave-robber"] = { tags = {} },
    ["crusader"] = { tags = {"faith"} },
    ["inquisitor"] = { tags = {"faith"} },
    ["agent"] = { tags = {} },
    ["wanderer"] = { tags = {} },
    ["dweller"] = { tags = {} },
    ["scavenger"] = { tags = {} },
    ["fugitive"] = { tags = {} },
    ["slave"] = { tags = {} },
    ["slaver"] = { tags = {} },
    ["witch"] = { tags = {"int"}, gender = {"female"} },
  }
end

function WordRepository:role() return randomFromKvp(self:roles()).name end


function WordRepository:verbs()
  return {
    { sp = "slay", pp = "slain", doer = "slayer", tags={} },
    { sp = "seek", pp = "sought", doer = "seeker", tags={} },
    { sp = "burn", pp = "burnt", doer = "burner", tags={} },
    { sp = "defile", pp = "defiled", doer = "defiler", tags={} },
    { sp = "gaze", pp = "gazed", doer = "gazer", tags={} },
    { sp = "eat", pp = "eaten", doer = "eater", tags={} },
    { sp = "tame", pp = "tamed", doer = "tamer", tags={} },
    { sp = "trap", pp = "trapped", doer = "trapper" },
    { sp = "drown", pp = "drowned", doer = "drowner", tags={"water"} },
    { sp = "conquer", pp = "conquered", doer = "conquerer", tags={} },
    { sp = "watch", pp = "watched", doer = "watcher", tags={} },
    { sp = "speak", pp = "spoken", doer = "speaker", tags={} },
    { sp = "see", pp = "seen", doer = "seer", tags={} },
    { sp = "bring", pp = "brought", doer = "bringer", tags={} },
    { sp = "deliver", pp = "delivered", doer = "delivered", tags={} },
    { sp = "forge", pp = "forged", doer = "forger", tags={} },
    { sp = "crush", pp = "crushed", doer = "crusher", tags={} },
    { sp = "strike", pp = "struck", doer = "striker", tags={} },
    { sp = "drink", pp = "drunk", doer = "drinker", tags={} },
    { sp = "soak", pp = "soaked", doer = "soaker", tags={} },
    { sp = "keep", pp = "kept", doer = "keeper", tags={} },
    { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
    { sp = "defend", pp = "defended", doer = "defender", tags={} },
    { sp = "protect", pp = "protected", doer = "protector", tags={} },
    { sp = "bury", pp = "buried", doer = "burier", tags={} },
    { sp = "bless", pp = "blessed", doer = "blesser", tags={} },
    { sp = "curse", pp = "cursed", doer = "curser", tags={} },
    { sp = "shun", pp = "shunned", doer = "shunner", tags={} },
    { sp = "scorn", pp = "scorned", doer = "scorner", tags={} },
  }
end

function WordRepository:verb() return random(self:verbs()) end

function WordRepository:simplePP(word)
  local output = word
  if string.sub(output, -1) ~= "e" then
    output = output.."e"
  end
  return output.."d"
end
  
function WordRepository:pluralize(word)
  local output = word
  local lastLetter = string.sub(output, -1)

  if lastLetter == "s" or lastLetter == "x" or lastLetter == "z" then
    return output.."es"
  elseif lastLetter == "f" then
    return string.sub(output, 1, string.len(output)-1).."ves"
  elseif lastLetter == "y" then
    return string.sub(output, 1, string.len(output)-1).."ies"
  else
    return word.."s"
  end
end

function WordRepository:less(word)
  return word.."less"
end