WordRepository = Class{}

function WordRepository:init()
  local this = {}
  setmetatable(this, self)
  return this
end

-- GENERAL

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

function WordRepository:color() return randomFromKvp(self:colors()) end

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
    ["lore"] = { tags = {} },
    ["profanity"] = { tags = {} },
    ["relic"] = { tags = {} },
    ["destitution"] = { tags = {} },
    ["dissolution"] = { tags = {} },
    ["darkness"] = { tags = {} },
    ["retribution"] = { tags = {} },
    ["agony"] = { tags = {} },
    ["indignation"] = { tags = {} },
    ["oblivion"] = { tags = {} },
    ["rejuvination"] = { tags = {} },
    ["restoration"] = { tags = {} },
    ["ruin"] = { tags = {} },
    ["tranquility"] = { tags = {} },
    ["serenity"] = { tags = {} },
    ["radiance"] = { tags = {} },
    ["imprisonment"] = { tags = {} },
    ["spendor"] = { tags = {} },
    ["terror"] = { tags = {} },
    ["duty"] = { tags = {} },
    ["spite"] = { tags = {} },
    ["discord"] = { tags = {} },
    ["aggression"] = { tags = {} },
    ["calamity"] = { tags = {} },
    ["woe"] = { tags = {} },
  }
  return list
end

function WordRepository:abstract() return randomFromKvp(self:abstracts()) end

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
    ["porcelain"] = { tags = {} },
  }
end

function WordRepository:craft() return randomFromKvp(self:crafts()) end

function WordRepository:substances()
  local list = {
    ["moss"] = { tags = {"forest"}, golem=true},
    ["fern"] = { tags = {"forest"} },
    ["vine"] = { tags = {"forest"} },
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
    ["rust"] = { tags = {} },
    ["herb"] = { tags = {} },
    ["seed"] = { tags = {} },
  }

  for k,v in pairs(list) do
    v.name = k
  end

  return list
end

function WordRepository:substance() return randomFromKvp(self:substances()) end

-- CHARACTERS

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
    ["fell"] = { tags = {} },
    ["pristine"] = { tags = {} },
    ["profane"] = { tags = {} },
    ["profound"] = { tags = {} },
    ["ignorant"] = { tags = {} },
    ["pure"] = { tags = {} },
    ["putrid"] = { tags = {} },
    ["radiant"] = { tags = {} },
    ["righteous"] = { tags = {} },
    ["watchful"] = { tags = {} },
    ["worthy"] = { tags = {} },
    ["regal"] = { tags = {} },
    ["resilient"] = { tags = {} },
    ["restless"] = { tags = {} },
    ["weary"] = { tags = {} },
    ["selfish"] = { tags = {} },
    ["selfless"] = { tags = {} },
    ["paragon of ____"] = { tags = {} },
    ["belevolent"] = { tags = {} },
    ["malignant"] = { tags = {} },
    ["grotesque"] = { tags = {} },
    ["monstrous"] = { tags = {} },
    ["stern"] = { tags = {} },
    ["sublime"] = { tags = {} },
    ["swift"] = { tags = {} },
    ["tainted"] = { tags = {} },
    ["luminous"] = { tags = {} },
    ["tempered"] = { tags = {} },
    ["exalted"] = { tags = {} },
    ["trustworthy"] = { tags = {} },
    ["undead"] = { tags = {} },
    ["unflinching"] = { tags = {} },
    ["unsettled"] = { tags = {} },
    ["fallen"] = { tags = {} },
    ["harbinger of ___"] = { tags = {} },
    ["venerable"] = { tags = {} },
    ["voracious"] = { tags = {} },
    ["implacable"] = { tags = {} },
    ["wizened"] = { tags = {} },
  }
end

function WordRepository:characterAdjective() return randomFromKvp(self:characterAdjectives()) end

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

function WordRepository:attribute() return randomFromKvp(self:attributes()) end

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

function WordRepository:attire() return randomFromKvp(self:attires()) end

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

function WordRepository:equipment() return randomFromKvp(self:equipments()) end

function WordRepository:positions()
  return {
    ["servant"] = { tags = {} },
    ["ward"] = { tags = {} },
    ["warden"] = { tags = {} },
    ["patron"] = { tags = {"male"} },
    ["matron"] = { tags = {"female"} },
    ["patriarch"] = { tags = {}, gender = {"male"} },
    ["matriarch"] = { tags = {}, gender = {"female"} },
    ["captain"] = { tags = {"sea"} },
    ["navigator"] = { tags = {"sea"} },
    ["sherpa"] = { tags = {} },
    ["guide"] = { tags = {} },
    ["scout"] = { tags = {} },
    ["engineer"] = { tags = {} },
    ["admiral"] = { tags = {} },
    ["miner"] = { tags = {} },
    ["artificer"] = { tags = {} },
    ["counselor"] = { tags = {} },
    ["voyager"] = { tags = {} },
    ["squire"] = { tags = {} },
    ["jailer"] = { tags = {} },
    ["sentinel"] = { tags = {} },
    ["curator"] = { tags = {} },
    ["marshal"] = { tags = {} },
    ["page"] = { tags = {} },
    ["herald"] = { tags = {} },
    ["apothecary"] = { tags = {} },
    ["archaeologist"] = { tags = {} },
    ["alchemist"] = { tags = {} },
    ["blacksmith"] = { tags = {} },
    ["healer"] = { tags = {} },
    ["archivist"] = { tags = {} },
    ["bureaucrat"] = { tags = {} },
    ["gardener"] = { tags = {} },
    ["grave-keeper"] = { tags = {} },
    ["trapper"] = { tags = {} },
    ["warrior"] = { tags = {} },
    ["inn-keeper"] = { tags = {} },
    ["tavern-keeper"] = { tags = {} },
    ["shop-keeper"] = { tags = {} },
    ["beggar"] = { tags = {} },
    ["chaplain"] = { tags = {} },
    ["vizier"] = { tags = {} },
    ["emissary"] = { tags = {} },
    ["sellsword"] = { tags = {} },
    ["bounty hunter"] = { tags = {} },
    ["shield-bearer"] = { tags = {} },
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
    ["apprentice"] = { tags = {} },
    ["custodian"] = { tags = {} },
    ["sentry"] = { tags = {} },
    ["master"] = { tags = {} },
    ["monk"] = { tags = {} },
    ["artisan"] = { tags = {} },
    ["architect"] = { tags = {} },
    ["magistrate"] = { tags = {} },
    ["trainer"] = { tags = {} },
    ["thrull"] = { tags = {} },
    ["inquisitor"] = { tags = {} },
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
    ["drifter"] = { tags = {} },
    ["pontiff"] = { tags = {} },
    ["missionary"] = { tags = {} },
    ["wayfarer"] = { tags = {} },
    ["augur"] = { tags = {} },
    ["peasant"] = { tags = {} },
    ["ranger"] = { tags = {} },
    ["hermit"] = { tags = {} },
    ["recluse"] = { tags = {} },
    ["elder"] = { tags = {} },
    ["herbalist"] = { tags = {} },
    ["custodian"] = { tags = {} },
    ["outcast"] = { tags = {} },
    ["skald"] = { tags = {} },
    ["sorceror"] = { tags = {} },
    ["asassin"] = { tags = {} },
    ["smuggler"] = { tags = {} },
    ["warlock"] = { tags = {} },
    ["witch"] = { tags = {} },
    ["foot soldier"] = { tags = {} },
    ["__ catcher"] = { tags = {} },
    ["mage"] = { tags = {} },
    ["constable"] = { tags = {} },
    ["farmer"] = { tags = {} },
    ["wizard"] = { tags = {} },
    ["__peddlar"] = { tags = {} },
    ["philosopher"] = { tags = {} },
    ["__dancer"] = { tags = {} },
    ["adventurer"] = { tags = {} },
    ["officiant"] = { tags = {} },
    ["mariner"] = { tags = {} },
    ["headmaster"] = { tags = {} },
    ["usher"] = { tags = {} },
    ["borderguard"] = { tags = {} },
    ["__robber"] = { tags = {} },
  }
end

function WordRepository:position() return randomFromKvp(self:positions()) end


function WordRepository:titles()
  return {
    ["hand"] = { tags = {} },
    ["lord"] = { tags = {}, gender = {"male"} },
    ["lady"] = { tags = {}, gender = {"female"} },
    ["prince"] = { tags = {}, gender = {"male"} },
    ["princess"] = { tags = {}, gender = {"female"} },
    ["tyrant"] = { tags = {} },
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
    ["acolyte"] = { tags = {} },
    ["vanguard"] = { tags = {} },
    ["mystic"] = { tags = {} },
    ["veteran"] = { tags = {} },
    ["zealot"] = { tags = {} },
    ["collector"] = { tags = {} },
    ["prophet"] = { tags = {} },
    ["heretic"] = { tags = {} },
    ["guardian"] = { tags = {} },
    ["overseer"] = { tags = {} },
    ["apostle"] = { tags = {} },
    ["elite"] = { tags = {} },
    ["arbiter"] = { tags = {} },
    ["archon"] = { tags = {} },
    ["refugee"] = { tags = {} },
    ["ancestor"] = { tags = {} },
    ["consul"] = { tags = {} },
    ["missionary"] = { tags = {} },
    ["brawler"] = { tags = {} },
    ["sojourner"] = { tags = {} },
    ["nomad"] = { tags = {} },
    ["escort"] = { tags = {} },
    ["aristocrat"] = { tags = {} },
    ["celebrant"] = { tags = {} },
    ["renegade"] = { tags = {} },
    ["duelist"] = { tags = {} },
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
    ["partisan"] = { tags = {} },
    ["__caller"] = { tags = {} },
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
    ["attendant"] = { tags = {} },
    ["scion"] = { tags = {} },
    ["mentor"] = { tags = {} },
  }
end

function WordRepository:relation() return randomFromKvp(self:relations()) end

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
    ["faithful"] = { tags = {} },
    ["uprising"] = { tags = {} },
    ["conclave"] = { tags = {} },
  }
end

function WordRepository:socialGroup() return randomFromKvp(self:socialGroups()) end

function WordRepository:verbs()
  return {
    ["slay"] = { sp = "slay", pp = "slain", doer = "slayer", tags={} },
    ["seek"] = { sp = "seek", pp = "sought", doer = "seeker", tags={} },
    ["burn"] = { sp = "burn", pp = "burnt", doer = "burner", tags={} },
    ["defile"] = { sp = "defile", pp = "defiled", doer = "defiler", tags={} },
    ["gaze"] = { sp = "gaze", pp = "gazed", doer = "gazer", tags={} },
    ["eat"] = { sp = "eat", pp = "eaten", doer = "eater", tags={} },
    ["tame"] = { sp = "tame", pp = "tamed", doer = "tamer", tags={} },
    ["trap"] = { sp = "trap", pp = "trapped", doer = "trapper" },
    ["drown"] = { sp = "drown", pp = "drowned", doer = "drowner", tags={"sea, river"} },
    ["conquer"] = { sp = "conquer", pp = "conquered", doer = "conquerer", tags={} },
    ["watch"] = { sp = "watch", pp = "watched", doer = "watcher", tags={} },
    ["speak"] = { sp = "speak", pp = "spoken", doer = "speaker", tags={} },
    ["see"] = { sp = "see", pp = "seen", doer = "seer", tags={} },
    ["bring"] = { sp = "bring", pp = "brought", doer = "bringer", tags={} },
    ["deliver"] = { sp = "deliver", pp = "delivered", doer = "delivered", tags={} },
    ["forge"] = { sp = "forge", pp = "forged", doer = "forger", tags={} },
    ["crush"] = { sp = "crush", pp = "crushed", doer = "crusher", tags={} },
    ["strike"] = { sp = "strike", pp = "struck", doer = "striker", tags={} },
    ["drink"] = { sp = "drink", pp = "drunk", doer = "drinker", tags={} },
    ["soak"] = { sp = "soak", pp = "soaked", doer = "soaker", tags={} },
    ["keep"] = { sp = "keep", pp = "kept", doer = "keeper", tags={} },
    ["embrace"] = { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
    ["defend"] = { sp = "defend", pp = "defended", doer = "defender", tags={} },
    ["protect"] = { sp = "protect", pp = "protected", doer = "protector", tags={} },
    ["bury"] = { sp = "bury", pp = "buried", doer = "burier", tags={} },
    ["bless"] = { sp = "bless", pp = "blessed", doer = "blesser", tags={} },
    ["curse"] = { sp = "curse", pp = "cursed", doer = "curser", tags={} },
    ["shun"] = { sp = "shun", pp = "shunned", doer = "shunner", tags={} },
    ["scorn"] = { sp = "scorn", pp = "scorned", doer = "scorner", tags={} },
    ["exile"] = { sp = "exile", pp = "exiled", doer = "exiler", tags={} },
    ["abolish"] = { sp = "abolish", pp = "abolished", doer = "abolisher", tags={} },
    ["absolve"] = { sp = "absolve", pp = "absolved", doer = "absolver", tags={} },
    ["enchant"] = { sp = "enchant", pp = "enchanted", doer = "enchanter", tags={} },
    ["conjur"] = { sp = "conjur", pp = "conjured", doer = "conjurer", tags={} },
    ["summon"] = { sp = "summon", pp = "summoned", doer = "summoner", tags={} },
    ["ascend"] = { sp = "ascend", pp = "ascended", doer = "ascender", tags={} },
    ["charm"] = { sp = "charm", pp = "charmed", doer = "charmer", tags={} },
    ["guide"] = { sp = "guide", pp = "guideed", doer = "guider", tags={} },
    ["adorn"] = { sp = "adorn", pp = "adorned", doer = "adorner", tags={} },
    ["yield"] = { sp = "yield", pp = "yielded", doer = "yielder", tags={} },
    ["embrace"] = { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
    ["condemn"] = { sp = "condemn", pp = "condemnd", doer = "condemner", tags={} },
    ["deliver"] = { sp = "deliver", pp = "delivered", doer = "deliverer", tags={} },
    ["despair"] = { sp = "despair", pp = "despaired", doer = "despairer", tags={} },
    ["renew"] = { sp = "renew", pp = "renewed", doer = "renewer", tags={} },
    ["enforce"] = { sp = "enforce", pp = "renewed", doer = "renewer", tags={} },
    ["exalt"] = { sp = "exalt", pp = "exalted", doer = "exalter", tags={} },
    ["favour"] = { sp = "favour", pp = "favoured", doer = "favourer", tags={} },
    ["anoint"] = { sp = "anoint", pp = "anointed", doer = "anointer", tags={} },
    ["purify"] = { sp = "purify", pp = "purified", doer = "purifier", tags={} },
    ["redeem"] = { sp = "redeem", pp = "redeemed", doer = "redeemer", tags={} },
    ["banish"] = { sp = "banish", pp = "banished", doer = "banisher", tags={} },
    ["blossom"] = { sp = "blossom", pp = "blossomed", doer = "blossomer", tags={} },
    ["weave"] = { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
    ["breathe"] = { sp = "breathe", pp = "breathed", doer = "breather", tags={} },
    ["purge"] = { sp = "purge", pp = "purged", doer = "purger", tags={} },
    ["cleanse"] = { sp = "cleanse", pp = "cleansed", doer = "cleanser", tags={} },
    ["consecrate"] = { sp = "consecrate", pp = "consecrated", doer = "consecrator", tags={} },
    ["defy"] = { sp = "defy", pp = "defied", doer = "defier", tags={} },
    ["devour"] = { sp = "devour", pp = "devoured", doer = "devourer", tags={} },
    ["assail"] = { sp = "assail", pp = "assailed", doer = "assailant", tags={} },
    ["endure"] = { sp = "endure", pp = "assailed", doer = "assailant", tags={} },
    ["entangle"] = { sp = "entangle", pp = "assailed", doer = "assailant", tags={} },
    ["corrupt"] = { sp = "corrupt", pp = "assailed", doer = "assailant", tags={} },
    ["excommunicate"] = { sp = "excommunicate", pp = "assailed", doer = "assailant", tags={} },
    ["expose"] = { sp = "expose", pp = "exposed", doer = "exposer", tags={} },
    ["mend"] = { sp = "mend", pp = "mended", doer = "mender", tags={} },
    ["hunt"] = { sp = "hunt", pp = "hunted", doer = "hunter", tags={} },
    ["take"] = { sp = "take", pp = "taken", doer = "taker", tags={} },
    ["forbid"] = { sp = "forbid", pp = "forbidden", doer = "forbidder", tags={} },
    ["kindle"] = { sp = "kindle", pp = "kindled", doer = "kindler", tags={} },
    ["weave"] = { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
    ["possess"] = { sp = "possess", pp = "possessed", doer = "possessor", tags={} },
    ["subdue"] = { sp = "subdue", pp = "subdued", doer = "subduer", tags={} },
    ["bestow"] = { sp = "bestow", pp = "bestowed", doer = "bestower", tags={} },
    ["preserve"] = { sp = "preserve", pp = "preserved", doer = "preserver", tags={} },
    ["ensnare"] = { sp = "ensnare", pp = "ensnared", doer = "ensnarer", tags={} },
    ["deceive"] = { sp = "deceive", pp = "deceived", doer = "deceiver", tags={} },
    ["inspire"] = { sp = "inspire", pp = "inspired", doer = "inspirer", tags={} },
    ["punish"] = { sp = "punish", pp = "punished", doer = "punisher", tags={} },
    ["light"] = { sp = "light", pp = "lighted", doer = "lighter", tags={} },
    ["mourn"] = { sp = "mourn", pp = "mourned", doer = "mourner", tags={} },
    ["devastate"] = { sp = "devastate", pp = "devastated", doer = "devastator", tags={} },
    ["nurture"] = { sp = "nurture", pp = "nurtured", doer = "nurturer", tags={} },
    ["atone"] = { sp = "atone", pp = "atoned", doer = "atoner", tags={} },
    ["pierce"] = { sp = "pierce", pp = "pierced", doer = "piercer", tags={} },

    -- { sp = "slay", pp = "slain", doer = "slayer", tags={} },
    -- { sp = "seek", pp = "sought", doer = "seeker", tags={} },
    -- { sp = "burn", pp = "burnt", doer = "burner", tags={} },
    -- { sp = "defile", pp = "defiled", doer = "defiler", tags={} },
    -- { sp = "gaze", pp = "gazed", doer = "gazer", tags={} },
    -- { sp = "eat", pp = "eaten", doer = "eater", tags={} },
    -- { sp = "tame", pp = "tamed", doer = "tamer", tags={} },
    -- { sp = "trap", pp = "trapped", doer = "trapper" },
    -- { sp = "drown", pp = "drowned", doer = "drowner", tags={"sea, river"} },
    -- { sp = "conquer", pp = "conquered", doer = "conquerer", tags={} },
    -- { sp = "watch", pp = "watched", doer = "watcher", tags={} },
    -- { sp = "speak", pp = "spoken", doer = "speaker", tags={} },
    -- { sp = "see", pp = "seen", doer = "seer", tags={} },
    -- { sp = "bring", pp = "brought", doer = "bringer", tags={} },
    -- { sp = "deliver", pp = "delivered", doer = "delivered", tags={} },
    -- { sp = "forge", pp = "forged", doer = "forger", tags={} },
    -- { sp = "crush", pp = "crushed", doer = "crusher", tags={} },
    -- { sp = "strike", pp = "struck", doer = "striker", tags={} },
    -- { sp = "drink", pp = "drunk", doer = "drinker", tags={} },
    -- { sp = "soak", pp = "soaked", doer = "soaker", tags={} },
    -- { sp = "keep", pp = "kept", doer = "keeper", tags={} },
    -- { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
    -- { sp = "defend", pp = "defended", doer = "defender", tags={} },
    -- { sp = "protect", pp = "protected", doer = "protector", tags={} },
    -- { sp = "bury", pp = "buried", doer = "burier", tags={} },
    -- { sp = "bless", pp = "blessed", doer = "blesser", tags={} },
    -- { sp = "curse", pp = "cursed", doer = "curser", tags={} },
    -- { sp = "shun", pp = "shunned", doer = "shunner", tags={} },
    -- { sp = "scorn", pp = "scorned", doer = "scorner", tags={} },
    -- { sp = "exile", pp = "exiled", doer = "exiler", tags={} },
    -- { sp = "abolish", pp = "abolished", doer = "abolisher", tags={} },
    -- { sp = "absolve", pp = "absolved", doer = "absolver", tags={} },
    -- { sp = "enchant", pp = "enchanted", doer = "enchanter", tags={} },
    -- { sp = "conjur", pp = "conjured", doer = "conjurer", tags={} },
    -- { sp = "summon", pp = "summoned", doer = "summoner", tags={} },
    -- { sp = "ascend", pp = "ascended", doer = "ascender", tags={} },
    -- { sp = "charm", pp = "charmed", doer = "charmer", tags={} },
    -- { sp = "guide", pp = "guideed", doer = "guider", tags={} },
    -- { sp = "adorn", pp = "adorned", doer = "adorner", tags={} },
    -- { sp = "yield", pp = "yielded", doer = "yielder", tags={} },
    -- { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
    -- { sp = "condemn", pp = "condemnd", doer = "condemner", tags={} },
    -- { sp = "deliver", pp = "delivered", doer = "deliverer", tags={} },
    -- { sp = "despair", pp = "despaired", doer = "despairer", tags={} },
    -- { sp = "renew", pp = "renewed", doer = "renewer", tags={} },
    -- { sp = "enforce", pp = "renewed", doer = "renewer", tags={} },
    -- { sp = "exalt", pp = "exalted", doer = "exalter", tags={} },
    -- { sp = "favour", pp = "favoured", doer = "favourer", tags={} },
    -- { sp = "anoint", pp = "anointed", doer = "anointer", tags={} },
    -- { sp = "purify", pp = "purified", doer = "purifier", tags={} },
    -- { sp = "redeem", pp = "redeemed", doer = "redeemer", tags={} },
    -- { sp = "banish", pp = "banished", doer = "banisher", tags={} },
    -- { sp = "blossom", pp = "blossomed", doer = "blossomer", tags={} },
    -- { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
    -- { sp = "breathe", pp = "breathed", doer = "breather", tags={} },
    -- { sp = "purge", pp = "purged", doer = "purger", tags={} },
    -- { sp = "cleanse", pp = "cleansed", doer = "cleanser", tags={} },
    -- { sp = "consecrate", pp = "consecrated", doer = "consecrator", tags={} },
    -- { sp = "defy", pp = "defied", doer = "defier", tags={} },
    -- { sp = "devour", pp = "devoured", doer = "devourer", tags={} },
    -- { sp = "assail", pp = "assailed", doer = "assailant", tags={} },
    -- { sp = "endure", pp = "assailed", doer = "assailant", tags={} },
    -- { sp = "entangle", pp = "assailed", doer = "assailant", tags={} },
    -- { sp = "corrupt", pp = "assailed", doer = "assailant", tags={} },
    -- { sp = "excommunicate", pp = "assailed", doer = "assailant", tags={} },
    -- { sp = "expose", pp = "exposed", doer = "exposer", tags={} },
    -- { sp = "mend", pp = "mended", doer = "mender", tags={} },
    -- { sp = "hunt", pp = "hunted", doer = "hunter", tags={} },
    -- { sp = "take", pp = "taken", doer = "taker", tags={} },
    -- { sp = "forbid", pp = "forbidden", doer = "forbidder", tags={} },
    -- { sp = "kindle", pp = "kindled", doer = "kindler", tags={} },
    -- { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
    -- { sp = "possess", pp = "possessed", doer = "possessor", tags={} },
    -- { sp = "subdue", pp = "subdued", doer = "subduer", tags={} },
    -- { sp = "bestow", pp = "bestowed", doer = "bestower", tags={} },
    -- { sp = "preserve", pp = "preserved", doer = "preserver", tags={} },
    -- { sp = "ensnare", pp = "ensnared", doer = "ensnarer", tags={} },
    -- { sp = "deceive", pp = "deceived", doer = "deceiver", tags={} },
    -- { sp = "inspire", pp = "inspired", doer = "inspirer", tags={} },
    -- { sp = "punish", pp = "punished", doer = "punisher", tags={} },
    -- { sp = "light", pp = "lighted", doer = "lighter", tags={} },
    -- { sp = "mourn", pp = "mourned", doer = "mourner", tags={} },
    -- { sp = "devastate", pp = "devastated", doer = "devastator", tags={} },
    -- { sp = "nurture", pp = "nurtured", doer = "nurturer", tags={} },
    -- { sp = "atone", pp = "atoned", doer = "atoner", tags={} },
    -- { sp = "pierce", pp = "pierced", doer = "piercer", tags={} },
  }
end

-- function WordRepository:verb() return random(self:verbs()) end
function WordRepository:verb() return randomFromKvp(self:verbs()) end


-- LANDSCAPES AND NATURE

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
    ["wastes"] = { tags = {} },
    ["wilderness"] = { tags = {} },
    ["shoal"] = { tags = {} },
    ["rapids"] = { tags = {} },
    ["falls"] = { tags = {} },
    ["tundra"] = { tags = {} },
    ["depths"] = { tags = {} },
    ["__lands"] = { tags = {} },
    ["__realms"] = { tags = {} },
    ["__scape"] = { tags = {} },
    ["__territory"] = { tags = {} },
  }
end

function WordRepository:landscape() return randomFromKvp(self:landscapes()) end

function WordRepository:meteorologies()
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
    ["sky"] = { tags = {} },
    ["squall"] = { tags = {"sea"} },
    ["gale"] = { tags = {} },
    ["tempest"] = { tags = {} },
    ["welkin"] = { tags = {} },
    ["thunder"] = { tags = {} },
  }
  -- for k,v in pairs(list) do
  --   v.name = k
  -- end
  return list
end

function WordRepository:meteorology() return randomFromKvp(self:meteorologies()) end


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
    ["lynx"] = { tags = {}, attributes={} },
    ["loon"] = { tags = {}, attributes={} },
    ["songbird"] = { tags = {}, attributes={} },
    ["crane"] = { tags = {}, attributes={} },
  }
end

function WordRepository:animal() return randomFromKvp(self:animals()) end

-- LOCATIONS

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

function WordRepository:settlement() return randomFromKvp(self:settlements()) end

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
    ["rustic"] = { tags = {} },
  }
end

function WordRepository:settlementDescriptor() return randomFromKvp(self:settlementDescriptors()) end

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
    ["hold"] = { tags = {} },
  }
end

function WordRepository:building() return randomFromKvp(self:buildings()) end

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

function WordRepository:buildingFeatures() return randomFromKvp(self:buildingFeature()) end

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
    ["cairn"] = { tags = {} },
  }
end

function WordRepository:dwelling() return randomFromKvp(self:dwellings()) end

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

function WordRepository:event() return randomFromKvp(self:events()) end

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

function WordRepository:compoundWord()
  local word1 = random({
    self:color(),
    self:abstract(),
    self:craft(),
    self:substance(),
    self:attribute(),
    self:attire(),
    self:equipment(),
    self:landscape(),
    self:meteorology(),
    self:animal(),
    self:settlement(),
    self:building(),
    self:dwelling()
  }).name

  local word2 = random({
    self:color(),
    self:abstract(),
    self:craft(),
    self:substance(),
    self:attribute(),
    self:attire(),
    self:equipment(),
    self:landscape(),
    self:meteorology(),
    self:animal(),
    self:settlement(),
    self:building(),
    self:dwelling()
  }).name
  return word1..word2
end




-- gift
-- reward
-- bounty
-- boon
-- favour
-- offering
-- spoils

-- endeavour

-- lullaby
-- requiem
-- hymn
-- rite
-- sacrament
-- liturgy
-- incantation


-- presence
-- prophecy
-- promise
-- commission
-- summons
-- decree
-- invocation
-- tarrif





-- link ("-link")

-- pike
-- greatsword
-- greatshield

-- robe
-- cloak
-- net
-- helm



-- balm
-- potion
-- poultice


-- curtain
-- throne
-- treasury



-- totem
-- sight
-- omen
-- shard




-- re__

-- god-
-- still-




-- prowl
-- purge
-- restrain
-- reclaim
-- relent
-- renounce
-- revere
-- revoke
-- mend
-- awaken
-- safeguard
-- scheme
-- shatter
-- slaughter
-- smite
-- smolder
-- smuggle
-- weave
-- stitch
-- quell
-- spurn
-- invoke
-- subjugate
-- exalt
-- nurture
-- vindicate
-- tempt
-- torment
-- arrogant
-- make
-- vanquish
-- abandon
-- worship
-- quell
-- persecute


