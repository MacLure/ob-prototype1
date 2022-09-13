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
    ["brave"] = { tags = {"str"} },
    ["strong"] = { tags = {"str"} },
    ["stout"] = { tags = {"str"} },
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
    ["vigilant"] = { tags = {} },
    ["heretic"] = { tags = {} },
    ["resplendent"] = { tags = {} },
    ["vigilant"] = { tags = {} },
    ["steadfast"] = { tags = {} },
    ["valiant"] = { tags = {} },
    ["artful"] = { tags = {} },
    ["solemn"] = { tags = {} },
    ["lustrous"] = { tags = {} },
    ["merciless"] = { tags = {} },
    ["merciful"] = { tags = {} },
    ["ardent"] = { tags = {} },
    ["worthy"] = { tags = {} },
    ["abhorrent"] = { tags = {} },
    ["decadent"] = { tags = {} },
    ["silent"] = { tags = {} },
    ["austere"] = { tags = {} },
    ["celestial"] = { tags = {} },
    ["stalwart"] = { tags = {} },
    ["clever"] = { tags = {"int"} },
    ["beautiful"] = { tags = {} },
    ["loyal"] = { tags = {} },
    ["pious"] = { tags = {} },
    ["vengeful"] = { tags = {} },
    ["dutiful"] = { tags = {} },
    ["eager"] = { tags = {} },
    ["calm"] = { tags = {} },
    ["serene"] = { tags = {} },
    ["sadistic"] = { tags = {} },
    ["enlightened"] = { tags = {"int"} },
    ["etherial"] = { tags = {} },
    ["exquisite"] = { tags = {} },
    ["faithful"] = { tags = {} },
    ["impostor"] = { tags = {} },
    ["usurper"] = { tags = {} },
    ["mighty"] = { tags = {"str"} },
    ["gallant"] = { tags = {} },
    ["generous"] = { tags = {} },
    ["innocent"] = { tags = {} },
    ["oathsworn"] = { tags = {} },
    ["glorious"] = { tags = {} },
    ["stalwart"] = { tags = {} },
    ["grizzly"] = { tags = {} },
    ["humble"] = { tags = {} },
    ["imposing"] = { tags = {} },
    ["obstinate"] = { tags = {} },
    ["noble"] = { tags = {} },
    ["ageless"] = { tags = {} },
    ["pariah"] = { tags = {} },
    ["penitent"] = { tags = {} },
    ["volatile"] = { tags = {} },
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
    ["oasis"] = { tags = {} },
    ["wadi"] = { tags = {} },
    ["grove"] = { tags = {} },
    ["crag"] = { tags = {} },
    ["canyon"] = { tags = {} },
    ["dune"] = { tags = {} },
    ["steppe"] = { tags = {} },
    ["rainforest"] = { tags = {} },
    ["cloud forest"] = { tags = {} },
    ["meadow"] = { tags = {} },
    ["grassland"] = { tags = {} },
    ["path"] = { tags = {} },
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
    ["dawn"] = { tags = {} },
    ["sunrise"] = { tags = {} },
    ["sunset"] = { tags = {} },
    ["dusk"] = { tags = {} },
    ["sun"] = { tags = {} },
    ["moonlight"] = { tags = {} },
    ["sunlight"] = { tags = {} },
    ["wind"] = { tags = {} },
    ["rain"] = { tags = {} },
    ["storm"] = { tags = {} },
    ["sandstorm"] = { tags = {"desert"} },
    ["blizzard"] = { tags = {"cold"} },
    ["cloud"] = { tags = {} },
    ["dew"] = { tags = {} },
    ["fog"] = { tags = {"forest", "swamp"} },
    ["mist"] = { tags = {"forest", "swamp", "mountain"} },
    ["aurora"] = { tags = {"cold"} },
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
    ["fortress"] = { tags = {} },
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
    ["graven"] = { tags = {} },
    ["hallowed"] = { tags = {} },
    ["haunted"] = { tags = {} },
    ["imperial"] = { tags = {} },
    ["arcane"] = { tags = {} },
    ["boreal"] = { tags = {} },
    ["primordeal"] = { tags = {} },
    ["overgrown"] = { tags = {} },
  }
end

function WordRepository:settlementDescriptor() return randomFromKvp(self:settlementDescriptors()).name end

function WordRepository:buildings()
  return {
    ["palace"] = { tags = {} },
    ["university"] = { tags = {} },
    ["academy"] = { tags = {} },
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
    ["bridge"] = { tags = {"river"} },
    ["ruins"] = { tags = {} },
    ["boneyard"] = { tags = {} },
    ["charnal ground"] = { tags = {} },
    ["forge"] = { tags = {} },
    ["basilica"] = { tags = {} },
    ["caravan"] = { tags = {} },
    ["vault"] = { tags = {} },
    ["citadel"] = { tags = {} },
    ["lookout"] = { tags = {} },
    ["monument"] = { tags = {} },
    ["fairgrounds"] = { tags = {} },
    ["lookout"] = { tags = {} },
    ["estate"] = { tags = {} },
  }
end

function WordRepository:building() return randomFromKvp(self:buildings()).name end

function WordRepository:buildingFeature()
  return {
    ["bell"] = { tags = {} },
    ["spire"] = { tags = {} },
    ["wall"] = { tags = {} },
    ["tower"] = { tags = {} },
    ["rampart"] = { tags = {} },
    ["gate"] = { tags = {} },
    ["door"] = { tags = {} },
    ["hall"] = { tags = {} },
    ["column"] = { tags = {} },
    ["reliquary"] = { tags = {} },
    ["lantern"] = { tags = {} },
    ["casket"] = { tags = {} },
    ["sarcophagus"] = { tags = {} },
    ["rune"] = { tags = {} },
    ["urn"] = { tags = {} },
    ["parapet"] = { tags = {} },
  }
end

function WordRepository:buildingFeatures() return randomFromKvp(self:buildingFeature()).name end


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
    ["sanctuary"] = { tags = {} },
    ["cemetary"] = { tags = {} },
    ["fissure"] = { tags = {} },
    ["field"] = { tags = {} },
    ["pasture"] = { tags = {} },
    ["farmstead"] = { tags = {} },
    ["___ing grounds"] = { tags = {} },
    ["homestead"] = { tags = {} },
    ["pit"] = { tags = {} },
  }
end

function WordRepository:dwelling() return randomFromKvp(self:dwellings()).name end

function WordRepository:animals()
  return {
    ["lion"] = { tags = {"plains"}, attributes={"mane","claw","tooth","paw"}, group="pride" },
    ["lioness"] = { tags = {"plains"}, attributes={"mane","claw","tooth","paw"}, gender={"female"}, group="pride"  },
    ["bull"] = { tags = {"plains"}, attributes={} },
    ["hyena"] = { tags = {"plains"}, attributes={} },
    ["tiger"] = { tags = {"forest"}, attributes={"claw","tooth","paw"} },
    ["tigress"] = { tags = {"forest"}, attributes={"claw","tooth","paw"}, gender={"female"} },
    ["snake"] = { tags = {}, attributes={"fang"} },
    ["serpent"] = { tags = {}, attributes={"fang","tongue"} },
    ["hawk"] = { tags = {}, attributes={"talon","feather"} },
    ["hound"] = { tags = {}, attributes={"tooth"}, group="pack" },
    ["spider"] = { tags = {}, attributes={"web"}, group="brood" },
    ["slug"] = { tags = {}, attributes={} },
    ["leech"] = { tags = {}, attributes={} },
    ["maggot"] = { tags = {}, attributes={} },
    ["frog"] = { tags = {}, attributes={} },
    ["toad"] = { tags = {}, attributes={} },
    ["viper"] = { tags = {}, attributes={"fang"}, group="" },
    ["scarab"] = { tags = {"desert"}, attributes={} },
    ["camel"] = { tags = {"desert"}, attributes={} },
    ["scorpion"] = { tags = {"desert"}, attributes={"claw"} },
    ["vulture"] = { tags = {"desert"}, attributes={"talon"} },
    ["wolf"] = { tags = {"forest"}, attributes={"claw","fang","paw"}, group="pack" },
    ["she-wolf"] = { tags = {"forest"}, attributes={"claw","fang","paw"}, gender={"female"}, group="pack" },
    ["bear"] = { tags = {"forest"}, attributes={"claw"} },
    ["owl"] = { tags = {"forest"}, attributes={} },
    ["fox"] = { tags = {"forest"}, attributes={"tail"} },
    ["elk"] = { tags = {"forest"}, attributes={"antler"} },
    ["shark"] = { tags = {"sea"}, attributes={"fin","tooth"} },
    ["fish"] = { tags = {"sea, river"}, attributes={}, group="school" },
    ["squid"] = { tags = {"sea"}, attributes={"beak"} },
    ["octopus"] = { tags = {"sea"}, attributes={"tentacle"} },
    ["crab"] = { tags = {"sea"}, attributes={"claw"} },
    ["lobster"] = { tags = {"sea"}, attributes={"claw"} },
    ["barricuda"] = { tags = {"sea"}, attributes={"tooth"} },
    ["whale"] = { tags = {"sea"}, attributes={} },
    ["crocodile"] = { tags = {"river"}, attributes={} },
    ["gryphon"] = { tags = {"desert", "mountain"}, attributes={} },
    ["falcon"] = { tags = {}, attributes={} },
    ["eagle"] = { tags = {}, attributes={} },
    ["wyrm"] = { tags = {}, attributes={} },
    ["rukh"] = { tags = {}, attributes={} },
    ["kirin"] = { tags = {}, attributes={} },
    ["sparrow"] = { tags = {}, attributes={} },
    ["raven"] = { tags = {}, attributes={"cold"} },
    ["crow"] = { tags = {}, attributes={} },
    ["osprey"] = { tags = {}, attributes={} },
    ["ox"] = { tags = {}, attributes={"plains"} },
    ["lamb"] = { tags = {}, attributes={"plains"} },
    ["panther"] = { tags = {}, attributes={"forest"} },
    ["jaguar"] = { tags = {}, attributes={"forest"} },
    ["giant ___"] = { tags = {}, attributes={} },
    ["stag"] = { tags = {}, attributes={"forest"} },
    ["antelope"] = { tags = {}, attributes={"plains"} },
    ["drake"] = { tags = {}, attributes={} },
    ["wyvern"] = { tags = {}, attributes={} },
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
    ["shroud"] = { tags = {} },
    ["insignia"] = { tags = {} },
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
    ["blade"] = { tags = {} },
    ["standard"] = { tags = {} },
    ["scythe"] = { tags = {} },
    ["harpoon"] = { tags = {} },
    ["axe"] = { tags = {} },
    ["torch"] = { tags = {} },
  }
end

function WordRepository:equipment() return randomFromKvp(self:equipments()).name end

function WordRepository:events()
  return {
    ["exorcism"] = { tags = {} },
    ["ritual"] = { tags = {} },
    ["festival"] = { tags = {} },
    ["carnival"] = { tags = {} },
    ["prayer"] = { tags = {} },
    ["procession"] = { tags = {} },
    ["coronation"] = { tags = {} },
    ["sacrifice"] = { tags = {} },
    ["feast"] = { tags = {} },
    ["gala"] = { tags = {} },
    ["assembly"] = { tags = {} },
    ["funeral"] = { tags = {} },
    ["hunt"] = { tags = {} },
    ["trial"] = { tags = {} },
    ["day of ___"] = { tags = {} },
    ["sacriment"] = { tags = {} },
    ["vigil"] = { tags = {} },
  }
end

function WordRepository:event() return randomFromKvp(self:events()).name end

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
    ["mirage"] = { tags = {"desert"} },
    ["grace"] = { tags = {} },
    ["light"] = { tags = {} },
    ["hope"] = { tags = {} },
    ["accord"] = { tags = {} },
    ["authority"] = { tags = {} },
    ["abomination"] = { tags = {} },
    ["honour"] = { tags = {} },
    ["fear"] = { tags = {} },
    ["wrath"] = { tags = {} },
    ["fate"] = { tags = {} },
    ["light"] = { tags = {} },
    ["mercy"] = { tags = {} },
    ["anguish"] = { tags = {} },
    ["strife"] = { tags = {} },
    ["justice"] = { tags = {} },
    ["taxes"] = { tags = {} },
    ["tithe"] = { tags = {} },
    ["alms"] = { tags = {} },
    ["ruin"] = { tags = {} },
    ["heritage"] = { tags = {} },
    ["tradition"] = { tags = {} },
    ["disorder"] = { tags = {} },
    ["uprising"] = { tags = {} },
    ["revolt"] = { tags = {} },
    ["drought"] = { tags = {} },
    ["preservation"] = { tags = {} },
    ["servitude"] = { tags = {} },
    ["mayhem"] = { tags = {} },
    ["sorrow"] = { tags = {} },
    ["decay"] = { tags = {} },
    ["gloom"] = { tags = {} },
  }
  return list
end

function WordRepository:abstract() return randomFromKvp(self:abstracts()).name end

function WordRepository:crafts()
  return {
    ["jewel"] = { tags = {}, golem=true},
    ["lace"] = { tags = {} },
    ["frill"] = { tags = {} },
    ["silk"] = { tags = {} },
    ["glass"] = { tags = {} },
    ["candle"] = { tags = {} },
    ["quill"] = { tags = {} },
    ["filigree"] = { tags = {} },
  }
end

function WordRepository:craft() return randomFromKvp(self:crafts()).name end


function WordRepository:substances()
  local list = {
    ["moss"] = { tags = {"forest"}, golem=true},
    ["fern"] = { tags = {"forest"} },
    ["brush"] = { tags = {"forest"} },
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
    ["gallow"] = { tags = {} },
    ["tide"] = { tags = {"sea"} },
    ["wave"] = { tags = {"sea"} },
    ["spore"] = { tags = {"forest"} },
    ["coral"] = { tags = {"sea"}, golem=true},
    ["driftwood"] = { tags = {"sea"}, golem=true},
    ["kelp"] = { tags = {"sea"} },
    ["pearl"] = { tags = {"sea"} },
    ["barnacle"] = { tags = {"sea", golem=true} },
    ["sand"] = { tags = {"desert"}, golem=true},
    ["mangrove"] = { tags = {"swamp"} },
    ["reed"] = { tags = {"swamp"} },
    ["flame"] = { tags = {} },
    ["plume"] = { tags = {} },
    ["bush"] = { tags = {} },
    ["salt"] = { tags = {} },
    ["honey"] = { tags = {} },
    ["rose"] = { tags = {} },
    ["poison"] = { tags = {} },
    ["venom"] = { tags = {} },
    ["bronze"] = { tags = {}, golem=true },
    ["brass"] = { tags = {}, golem=true },
    ["iron"] = { tags = {}, golem=true},
    ["stone"] = { tags = {}, golem=true},
    ["gold"] = { tags = {}, golem=true},
    ["clay"] = { tags = {}, golem=true},
    ["jade"] = { tags = {}, golem=true},
    ["silver"] = { tags = {}, golem=true },
    ["dirt"] = { tags = {} },
    ["dung"] = { tags = {} },
    ["wine"] = { tags = {} },
    ["carrion"] = { tags = {} },
    ["chain"] = { tags = {} },
    ["fetter"] = { tags = {} },
    ["livestock"] = { tags = {} },
    ["crops"] = { tags = {} },
    ["corpse"] = { tags = {} },
    ["crystal"] = { tags = {} },
    ["flower"] = { tags = {} },
    ["ink"] = { tags = {"sea"} },
    ["jasmine"] = { tags = {} },
    ["orchid"] = { tags = {} },
    ["juniper"] = { tags = {} },
    ["lotus"] = { tags = {} },
    ["ivory"] = { tags = {} },
    ["sprout"] = { tags = {"forest"} },
    ["granite"] = { tags = {} },
    ["opal"] = { tags = {} },
    ["marble"] = { tags = {} },
    ["nectar"] = { tags = {} },
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
    ["patron"] = { tags = {"male"} },
    ["matron"] = { tags = {"female"} },
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
    ["captain"] = { tags = {"sea"} },
    ["navigator"] = { tags = {"sea"} },
    ["sherpa"] = { tags = {} },
    ["guide"] = { tags = {} },
    ["acolyte"] = { tags = {} },
    ["vanguard"] = { tags = {} },
    ["scout"] = { tags = {} },
    ["engineer"] = { tags = {} },
    ["mystic"] = { tags = {} },
    ["admiral"] = { tags = {} },
    ["miner"] = { tags = {} },
    ["artificer"] = { tags = {} },
    ["counselor"] = { tags = {} },
    ["voyager"] = { tags = {} },
    ["squire"] = { tags = {} },
    ["jailer"] = { tags = {} },
    ["veteran"] = { tags = {} },
    ["zealot"] = { tags = {} },
    ["collector"] = { tags = {} },
    ["prophet"] = { tags = {} },
    ["heretic"] = { tags = {} },
    ["sentinel"] = { tags = {} },
    ["curator"] = { tags = {} },
    ["marshal"] = { tags = {} },
    ["guardian"] = { tags = {} },
    ["overseer"] = { tags = {} },
    ["page"] = { tags = {} },
    ["herald"] = { tags = {} },
    ["apostle"] = { tags = {} },
    ["apothecary"] = { tags = {} },
    ["elite"] = { tags = {} },
    ["arbiter"] = { tags = {} },
    ["archivist"] = { tags = {} },
    ["archon"] = { tags = {} },
    ["archaeologist"] = { tags = {} },
    ["alchemist"] = { tags = {} },
    ["blacksmith"] = { tags = {} },
    ["healer"] = { tags = {} },
    ["refugee"] = { tags = {} },
    ["ancestor"] = { tags = {} },
    ["consul"] = { tags = {} },
    ["missionary"] = { tags = {} },
    ["bureaucrat"] = { tags = {} },
    ["gardener"] = { tags = {} },
    ["grave-keeper"] = { tags = {} },
    ["brawler"] = { tags = {} },
    ["trapper"] = { tags = {} },
    ["sojourner"] = { tags = {} },
    ["warrior"] = { tags = {} },
    ["inn-keeper"] = { tags = {} },
    ["tavern-keeper"] = { tags = {} },
    ["shop-keeper"] = { tags = {} },
    ["beggar"] = { tags = {} },
    ["chaplain"] = { tags = {} },
    ["vizier"] = { tags = {} },
    ["emissary"] = { tags = {} },
    ["sellsword"] = { tags = {} },
    ["nomad"] = { tags = {} },
    ["bounty hunter"] = { tags = {} },
    ["shield-bearer"] = { tags = {} },
    ["escort"] = { tags = {} },
    ["aristocrat"] = { tags = {} },
    ["cartographer"] = { tags = {} },
    ["chancellor"] = { tags = {} },
    ["peddler"] = { tags = {} },
    ["officer"] = { tags = {} },
    ["chieftain"] = { tags = {} },
    ["courrier"] = { tags = {} },
    ["storyteller"] = { tags = {} },
    ["castellan"] = { tags = {} },
    ["professor"] = { tags = {} },
    ["conjurer"] = { tags = {} },
    ["enchanter"] = { tags = {} },
    ["outrider"] = { tags = {} },
    ["denizen"] = { tags = {} },
    ["celebrant"] = { tags = {} },
    ["custodian"] = { tags = {} },
    ["renegade"] = { tags = {} },
    ["duelist"] = { tags = {} },
    ["apprentice"] = { tags = {} },
    ["sentry"] = { tags = {} },
    ["master"] = { tags = {} },
    ["monk"] = { tags = {} },
    ["artisan"] = { tags = {} },
    ["architect"] = { tags = {} },
    ["magistrate"] = { tags = {} },
    ["trainer"] = { tags = {} },
    ["thrull"] = { tags = {} },
    ["inquisitor"] = { tags = {} },
    ["exile"] = { tags = {"faith"} },
    ["heretic"] = { tags = {"faith"} },
    ["defender"] = { tags = {"knight"} },
    ["brute"] = { tags = {"str"} },
    ["seer"] = { tags = {} },
    ["oracle"] = { tags = {} },
    ["sheppard"] = { tags = {"faith"} },
    ["knight-errant"] = { tags = {} },
    ["ascetic"] = { tags = {} },
    ["fanatic"] = { tags = {} },
    ["hermit"] = { tags = {} },
    ["salvager"] = { tags = {"sea"} },
    ["__smith"] = { tags = {} },
    ["__ crafter"] = { tags = {} },
    ["guru"] = { tags = {} },
    ["heirophant"] = { tags = {} },
    ["chronicler"] = { tags = {} },
    ["oligarch"] = { tags = {} },
    ["moneychanger"] = { tags = {} },
    ["courtier"] = { tags = {} },
    ["borderguard"] = { tags = {} },
    ["informant"] = { tags = {} },
    ["partisan"] = { tags = {} },
    ["drifter"] = { tags = {} },
    ["pontiff"] = { tags = {} },
    ["missionary"] = { tags = {} },
    ["wayfarer"] = { tags = {} },
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
    ["child"] = { tags = {}, gender = {} },
    ["scourge"] = { tags = {} },
    ["consort"] = { tags = {} },
    ["husband"] = { tags = {}, gender = {"male"} },
    ["wife"] = { tags = {}, gender = {"female"} },
    ["butcher"] = { tags = {} },
    ["liege"] = { tags = {} },
    ["disciple"] = { tags = {} },
    ["descendent"] = { tags = {} },
    ["retainer"] = { tags = {} },
    ["bodyguard"] = { tags = {} },
    ["stalker"] = { tags = {} },
    ["fellow"] = { tags = {} },
    ["kin"] = { tags = {} },
    ["bride"] = { tags = {"female"} },
    ["groom"] = { tags = {"male"} },
    ["devotee"] = { tags = {} },
    ["ally"] = { tags = {} },
    ["vassal"] = { tags = {} },
    ["orphan"] = { tags = {} },
    ["attendant"] = { tags = {} },
    ["companion"] = { tags = {} },
    ["offspring"] = { tags = {} },
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
    ["militia"] = { tags = {} },
    ["guild"] = { tags = {} },
    ["conclave"] = { tags = {} },
    ["clergy"] = { tags = {} },
    ["infantry"] = { tags = {} },
    ["cult"] = { tags = {} },
    ["__watch"] = { tags = {} },
    ["fellowship"] = { tags = {} },
    ["company"] = { tags = {} },
    ["patrol"] = { tags = {} },
    ["battalion"] = { tags = {} },
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
    { sp = "drown", pp = "drowned", doer = "drowner", tags={"sea, river"} },
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
    { sp = "exile", pp = "exiled", doer = "exiler", tags={} },
    { sp = "abolish", pp = "abolished", doer = "abolisher", tags={} },
    { sp = "absolve", pp = "absolved", doer = "absolver", tags={} },
    { sp = "enchant", pp = "enchanted", doer = "enchanter", tags={} },
    { sp = "conjur", pp = "conjured", doer = "conjurer", tags={} },
    { sp = "summon", pp = "summoned", doer = "summoner", tags={} },
    { sp = "ascend", pp = "ascended", doer = "ascender", tags={} },
    { sp = "charm", pp = "charmed", doer = "charmer", tags={} },
    { sp = "guide", pp = "guideed", doer = "guider", tags={} },
    { sp = "adorn", pp = "adorned", doer = "adorner", tags={} },
    { sp = "yield", pp = "yielded", doer = "yielder", tags={} },
    { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
    { sp = "condemn", pp = "condemnd", doer = "condemner", tags={} },
    { sp = "deliver", pp = "delivered", doer = "deliverer", tags={} },
    { sp = "despair", pp = "despaired", doer = "despairer", tags={} },
    { sp = "renew", pp = "renewed", doer = "renewer", tags={} },
    { sp = "enforce", pp = "renewed", doer = "renewer", tags={} },
    { sp = "exalt", pp = "exalted", doer = "exalter", tags={} },
    { sp = "favour", pp = "favoured", doer = "favourer", tags={} },
    { sp = "anoint", pp = "anointed", doer = "anointer", tags={} },
    { sp = "purify", pp = "purified", doer = "purifier", tags={} },
    { sp = "redeem", pp = "redeemed", doer = "redeemer", tags={} },
    { sp = "banish", pp = "banished", doer = "banisher", tags={} },
    { sp = "blossom", pp = "blossomed", doer = "blossomer", tags={} },
    { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
    { sp = "breathe", pp = "breathed", doer = "breather", tags={} },
    { sp = "purge", pp = "purged", doer = "purger", tags={} },
    { sp = "cleanse", pp = "cleansed", doer = "cleanser", tags={} },
    { sp = "consecrate", pp = "consecrated", doer = "consecrator", tags={} },
    { sp = "defy", pp = "defied", doer = "defier", tags={} },
    { sp = "devour", pp = "devoured", doer = "devourer", tags={} },
    { sp = "assail", pp = "assailed", doer = "assailant", tags={} },
    { sp = "endure", pp = "assailed", doer = "assailant", tags={} },
    { sp = "entangle", pp = "assailed", doer = "assailant", tags={} },
    { sp = "corrupt", pp = "assailed", doer = "assailant", tags={} },
    { sp = "excommunicate", pp = "assailed", doer = "assailant", tags={} },
    { sp = "expose", pp = "exposed", doer = "exposer", tags={} },
    { sp = "mend", pp = "mended", doer = "mender", tags={} },
    { sp = "hunt", pp = "hunted", doer = "hunter", tags={} },
    { sp = "take", pp = "taken", doer = "taker", tags={} },
    { sp = "forbid", pp = "forbidden", doer = "forbidder", tags={} },
    { sp = "kindle", pp = "kindled", doer = "kindler", tags={} },
    { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
    { sp = "possess", pp = "possessed", doer = "possessor", tags={} },
    { sp = "subdue", pp = "subdued", doer = "subduer", tags={} },
    { sp = "bestow", pp = "bestowed", doer = "bestower", tags={} },
    { sp = "preserve", pp = "preserved", doer = "preserver", tags={} },
    { sp = "ensnare", pp = "ensnared", doer = "ensnarer", tags={} },
    { sp = "deceive", pp = "deceived", doer = "deceiver", tags={} },
    { sp = "inspire", pp = "inspired", doer = "inspirer", tags={} },
    { sp = "punish", pp = "punished", doer = "punisher", tags={} },
    { sp = "light", pp = "lighted", doer = "lighter", tags={} },
    { sp = "mourn", pp = "mourned", doer = "mourner", tags={} },
    { sp = "devastate", pp = "devastated", doer = "devastator", tags={} },
    { sp = "nurture", pp = "nurtured", doer = "nurturer", tags={} },
    { sp = "atone", pp = "atoned", doer = "atoner", tags={} },
    { sp = "pierce", pp = "pierced", doer = "piercer", tags={} },
  }
end

function WordRepository:verb() return random(self:verbs()) end

function WordRepository:unclassified()
  return {
    "make an offering to",
    "swear allegiance to",
    "make a sacrifice to",
    "decree",
    "entreaty",
    "accord",
    "proclamation",
    "pact",
    "verdict",
    "pact",
    "pledge",
    "covenant",
    }
end

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
