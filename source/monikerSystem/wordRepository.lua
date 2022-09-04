WordRepository = Class{}

function WordRepository:init()
    local this = {}
    setmetatable(this, self)
    return this
  end

function WordRepository:color()
    local list = {
      "red","blue","black","white","yellow","green","golden","silver"
    }
    return random(list)
  end
  
  function WordRepository:animal()
    local list = {
      "wolf","fox","bear","lion","tiger","maggot","snake","serpent","hawk","hound","spider",
      "slug","elk","viper","scorpion","leech","fox"
    }
    return random(list)
  end
  
  function WordRepository:adjective()
    local list = {
      "foul","fair","great","brave","wise","pious","pure","devout","divine","lost","mad",
      "ancient","elder","forgotten","eternal"
    }
    return random(list)
  end
  
  function WordRepository:landscape()
    local list = {
      "mountain","desert","forest","river","swamp","marsh","moor","bay"
    }
    return random(list)
  end
  
  function WordRepository:relation()
    local list = {
      "brother","sister","father","mother","son","daughter","servant","hand","keeper","scourge",
      "lord","lady","prince","princess","priest","priestess","tyrant","consort","husband","wife",
      "butcher","heretic","defender","ward","warden","patron","brute"
    }
    return random(list)
  end

function WordRepository:relationType()
    local list = {
      "brotherhood","sisterhood","priesthood","order","house","circle","clan","tribe","horde"
    }
    return random(list)
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
  
  function WordRepository:substance()
    local list = {
      "glass","iron","stone","gold","dirt","dung","moss","ice","snow","fire","flame","blood",
      "star","sun","moon","skull","dirt","wind","rain","storm","winter","sand","plume","crown",
      "war","battle","death","shadow","rot","disease","plague","cloud","fern","tree","root","leaf",
      "briar","thorn","thistle","brine","tide","wave","perdition","grass","bush","coral","dew","branch",
      "jewel","salt","water","honey","soil","barnacle","wood","timber","arrow","sword","spear","mace",
      "hammer","shield","bow","fog","mist","banner","rose","grave","tomb","crypt","lace","frill","kelp",
      "silk","poison","venom","bile","pox","destruction","darkness","ash"
    }
    return random(list)
  end
  
  function WordRepository:attribute()
    local list = {
      "heart","soul","eye","face","name","tongue","fang","foot","antler","claw","tooth","mask"
    }
    return random(list)
  end
  
  function WordRepository:verb()
    local list = {
      { sp = "slay", pp = "slayed", doer = "slayer" },
      { sp = "slay", pp = "sought", doer = "seeker" },
      { sp = "burn", pp = "burnt", doer = "burner" },
      { sp = "defile", pp = "defiled", doer = "defiler" },
      { sp = "gaze", pp = "gazed", doer = "gazer" },
      { sp = "eat", pp = "eaten", doer = "eater" },
      { sp = "tame", pp = "tamed", doer = "tamer" },
      { sp = "trap", pp = "trapped", doer = "trapper" },
      { sp = "drown", pp = "drowned", doer = "drowner" },
      { sp = "conquer", pp = "conquered", doer = "conquerer" },
      { sp = "watch", pp = "watched", doer = "watcher" },
      { sp = "speak", pp = "spoken", doer = "speaker" },
      { sp = "see", pp = "seen", doer = "seer" },
      { sp = "bring", pp = "brought", doer = "bringer" },
      { sp = "deliver", pp = "delivered", doer = "delivered" },
      { sp = "forge", pp = "forged", doer = "forger" },
      { sp = "crush", pp = "crushed", doer = "crusher" },
      { sp = "strike", pp = "struck", doer = "striker" },
      { sp = "drink", pp = "drunk", doer = "drinker" },
      { sp = "soak", pp = "soaked", doer = "soaker" },
      { sp = "keep", pp = "kept", doer = "keeper" },
      { sp = "embrace", pp = "embraced", doer = "embracer" },
      { sp = "defend", pp = "defended", doer = "defender" },
      { sp = "bury", pp = "buried", doer = "burier" },
      { sp = "bless", pp = "blessed", doer = "blesser" },
      { sp = "curse", pp = "cursed", doer = "curser" },
      { sp = "shun", pp = "shunned", doer = "shunner" },
      { sp = "scorn", pp = "scorned", doer = "scorner" },

    }
    return random(list)
  end
  
  function WordRepository:simplePP(word)
    local output = word
    if string.sub(output, -1) ~= "e" then
      output = output.."e"
    end
    return output.."d"
  end
  
function WordRepository:settlement()
    local list = {
      "city","town","village","castle","fort","estate","necropolis"
    }
    return random(list)
  end
  
  function WordRepository:building()
    local list = {
      "palace","university","library","tower","dungeon","tomb","manor","church","temple","chapel",
      "shrine","mine","quarry","mill","farm","sanctuary","bridge","ruins"
    }
    return random(list)
  end
  
  function WordRepository:dwelling()
    local list = {
      "den","hovel","lair","cave","hideout","resting place","grave","gathering place","encampment",
      "garden"
    }
    return random(list)
  end