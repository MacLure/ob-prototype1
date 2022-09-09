WordRepository = Class{}

function WordRepository:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function WordRepository:colors()
  return {
    "red","blue","black","white","yellow","green","golden","silver"
  }
end

function WordRepository:color() return random(self:colors()) end

function WordRepository:animals()
  return {
    ["wolf"] = { tags = {} },
    ["bear"] = { tags = {} },
    ["lion"] = { tags = {} },
    ["tiger"] = { tags = {} },
    ["maggot"] = { tags = {} },
    ["snake"] = { tags = {} },
    ["serpent"] = { tags = {} },
    ["hawk"] = { tags = {} },
    ["hound"] = { tags = {} },
    ["spider"] = { tags = {} },
    ["slug"] = { tags = {} },
    ["elk"] = { tags = {} },
    ["viper"] = { tags = {} },
    ["scorpion"] = { tags = {} },
    ["leech"] = { tags = {} },
    ["fox"] = { tags = {} },
    ["shark"] = { tags = {"water"} },
    ["fish"] = { tags = {"water"} },
    ["squid"] = { tags = {"water"} },
    ["crab"] = { tags = {"water"} },
    ["lobster"] = { tags = {"water"} },
    ["barricuda"] = { tags = {"water"} },
    ["whale"] = { tags = {"water"} },
  }
end

function WordRepository:animal() return randomFromKvp(self:animals()) end

function WordRepository:adjectives()
  return {
    "foul","fair","great","brave","wise","pious","pure","devout","divine","lost","mad",
    "ancient","elder","forgotten","eternal"
  }
end

function WordRepository:adjective()
  return random(self:adjectives())
end

function WordRepository:landscapes()
  return {
    "mountain","desert","forest","river","swamp","marsh","moor","bay","atoll","island"
  }
end

function WordRepository:landscape() return random(self:landscapes()) end

function WordRepository:relations()
  return {
    "brother","sister","father","mother","son","daughter","servant","hand","keeper","scourge",
    "lord","lady","prince","princess","priest","priestess","tyrant","consort","husband","wife",
    "butcher","heretic","defender","ward","warden","patron","brute",
    "marquis","emir","khan","elector",
    "satrap","governor","boyar","jarl","earl","margrave",
    "thane","magistrate","pasha","bey","shah","raj",
    "prefect","bishop","cardinal","seer","oracle","sheppard","patriarch","matriarch"
  }
end

function WordRepository:relation() return random(self:relations()) end

function WordRepository:socialGroups()
  return {
    "brotherhood","sisterhood","priesthood","order","house","circle","clan","tribe","horde"
  }
end

function WordRepository:socialGroup() return random(self:socialGroups()) end

function WordRepository:substances()
  return {
    ["moss"] = { tags = {"forest"} },
    ["fern"] = { tags = {"forest"} },
    ["tree"] = { tags = {"forest"} },
    ["root"] = { tags = {"forest"} },
    ["leaf"] = { tags = {"forest"} },
    ["briar"] = { tags = {"forest"} },
    ["thorn"] = { tags = {"forest"} },
    ["thistle"] = { tags = {"forest"} },
    ["branch"] = { tags = {"forest"} },
    ["wood"] = { tags = {"forest"} },
    ["timber"] = { tags = {"forest"} },
    ["ice"] = { tags = {"cold"} },
    ["snow"] = { tags = {"cold"} },
    ["winter"] = { tags = {"cold"} },
    ["fire"] = { tags = {"fire"} },
    ["ash"] = { tags = {"fire","death"} },
    ["grave"] = { tags = {"death"} },
    ["tomb"] = { tags = {"death"} },
    ["crypt"] = { tags = {"death"} },
    ["tide"] = { tags = {"water"} },
    ["wave"] = { tags = {"water"} },
    ["coral"] = { tags = {"water"} },
    ["kelp"] = { tags = {"water"} },
    ["pearl"] = { tags = {"water"} },
    ["barnacle"] = { tags = {"water"} },
    ["flame"] = { tags = {} },
    ["blood"] = { tags = {} },
    ["star"] = { tags = {} },
    ["sun"] = { tags = {} },
    ["moon"] = { tags = {} },
    ["skull"] = { tags = {} },
    ["wind"] = { tags = {} },
    ["rain"] = { tags = {} },
    ["storm"] = { tags = {} },
    ["sand"] = { tags = {} },
    ["plume"] = { tags = {} },
    ["crown"] = { tags = {} },
    ["war"] = { tags = {} },
    ["battle"] = { tags = {} },
    ["death"] = { tags = {} },
    ["shadow"] = { tags = {} },
    ["rot"] = { tags = {} },
    ["disease"] = { tags = {} },
    ["plague"] = { tags = {} },
    ["cloud"] = { tags = {} },
    ["perdition"] = { tags = {} },
    ["bush"] = { tags = {} },
    ["dew"] = { tags = {} },
    ["jewel"] = { tags = {} },
    ["salt"] = { tags = {} },
    ["honey"] = { tags = {} },
    ["soil"] = { tags = {} },
    ["arrow"] = { tags = {} },
    ["sword"] = { tags = {} },
    ["spear"] = { tags = {} },
    ["mace"] = { tags = {} },
    ["hammer"] = { tags = {} },
    ["shield"] = { tags = {} },
    ["bow"] = { tags = {} },
    ["fog"] = { tags = {} },
    ["mist"] = { tags = {} },
    ["banner"] = { tags = {} },
    ["rose"] = { tags = {} },
    ["lace"] = { tags = {} },
    ["frill"] = { tags = {} },
    ["silk"] = { tags = {} },
    ["poison"] = { tags = {} },
    ["venom"] = { tags = {} },
    ["bile"] = { tags = {} },
    ["pox"] = { tags = {} },
    ["destruction"] = { tags = {} },
    ["darkness"] = { tags = {} },
    ["glass"] = { tags = {} },
    ["iron"] = { tags = {} },
    ["stone"] = { tags = {} },
    ["gold"] = { tags = {} },
    ["dirt"] = { tags = {} },
    ["dung"] = { tags = {} },
  }
end

function WordRepository:substance() return randomFromKvp(self:substances()).name end

function WordRepository:attributes()
  return {
    "heart","soul","eye","face","name","tongue","fang","foot","antler","claw","tooth","mask"
  }
end

function WordRepository:attribute() return random(self:attributes()) end

function WordRepository:verbs()
  return {
    { sp = "slay", pp = "slayed", doer = "slayer", tags={} },
    { sp = "slay", pp = "sought", doer = "seeker", tags={} },
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
  
function WordRepository:settlements()
  return {
    "city","town","village","castle","fort","estate","necropolis"
  }
end

function WordRepository:settlement() return random(self:settlements()) end

function WordRepository:buildings()
  return {
    "palace","university","library","tower","dungeon","tomb","manor","church","temple","chapel",
    "shrine","mine","quarry","mill","farm","sanctuary","bridge","ruins"
  }
end

function WordRepository:building() return random(self:buildings()) end

function WordRepository:dwellings()
  return {
    "den","hovel","lair","cave","hideout","resting place","grave","gathering place","encampment",
    "garden"
  }
end

function WordRepository:dwelling() return random(self:dwellings()) end

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