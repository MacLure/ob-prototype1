WordRepository = Class{}

function WordRepository:init()
  local this = {}
  setmetatable(this, self)
  return this
end

function WordRepository:color()
  return randomFromKvp(self.colors)
end

function WordRepository:abstract()
  return randomFromKvp(self.abstracts)
end

function WordRepository:craft()
  return randomFromKvp(self.crafts)
end

function WordRepository:substance()
  return randomFromKvp(self.substances)
end

function WordRepository:characterAdjective()
  return randomFromKvp(self.characterAdjectives)
end

function WordRepository:attribute()
  return randomFromKvp(self.attributes)
end

function WordRepository:equipment()
  return randomFromKvp(self.equipments)
end

function WordRepository:attire()
  return randomFromKvp(self.attires)
end

function WordRepository:position()
  return randomFromKvp(self.positions)
end

function WordRepository:title()
  return randomFromKvp(self.titles)
end

function WordRepository:relation()
  return randomFromKvp(self.relations)
end

function WordRepository:socialGroup()
  return randomFromKvp(self.socialGroups)
end

function WordRepository:verb()
  return randomFromKvp(self.verbs)
end

function WordRepository:landscape()
  return randomFromKvp(self.landscapes)
end

function WordRepository:animal()
  return randomFromKvp(self.animals)
end

function WordRepository:meteorology()
  return randomFromKvp(self.meteorologies)
end

function WordRepository:settlementDescription()
  return randomFromKvp(self.settlementDescriptions)
end

function WordRepository:equipment()
  return randomFromKvp(self.equipments)
end

function WordRepository:building()
  return randomFromKvp(self.buildings)
end

function WordRepository:buildingFeature()
  return randomFromKvp(self.buildingFeatures)
end

function WordRepository:settlement()
  return randomFromKvp(self.settlements)
end

function WordRepository:wildLocation()
  return randomFromKvp(self.wildLocations)
end

function WordRepository:dwelling()
  return randomFromKvp(self.dwellings)
end

function WordRepository:event()
  return randomFromKvp(self.events)
end


-- GENERAL

WordRepository.colors = {
  ["red"] = { tags = {} },
  ["blue"] = { tags = {} },
  ["black"] = { tags = {} },
  ["white"] = { tags = {} },
  ["yellow"] = { tags = {} },
  ["green"] = { tags = {} },
  ["golden"] = { tags = {} },
  ["silver"] = { tags = {} },
}

WordRepository.abstracts = {
  -- positive
  ["grace"] = { tags = {} },
  ["light"] = { tags = {} },
  ["hope"] = { tags = {} },
  ["accord"] = { tags = {} },
  ["authority"] = { tags = {} },
  ["honour"] = { tags = {} },
  ["light"] = { tags = {} },
  ["mercy"] = { tags = {} },
  ["justice"] = { tags = {} },
  ["heritage"] = { tags = {} },
  ["tradition"] = { tags = {} },
  ["preservation"] = { tags = {} },
  ["lore"] = { tags = {} },
  ["rejuvination"] = { tags = {} },
  ["restoration"] = { tags = {} },
  ["tranquility"] = { tags = {} },
  ["serenity"] = { tags = {} },
  ["radiance"] = { tags = {} },
  ["spendor"] = { tags = {} },

  -- negative
  ["death"] = { tags = {} },
  ["shadow"] = { tags = {} },
  ["rot"] = { tags = {} },
  ["disease"] = { tags = {} },
  ["plague"] = { tags = {} },
  ["perdition"] = { tags = {} },
  ["pox"] = { tags = {} },
  ["destruction"] = { tags = {} },
  ["darkness"] = { tags = {} },
  ["abomination"] = { tags = {} },
  ["fear"] = { tags = {} },
  ["wrath"] = { tags = {} },
  ["anguish"] = { tags = {} },
  ["strife"] = { tags = {} },
  ["disorder"] = { tags = {} },
  ["servitude"] = { tags = {} },
  ["mayhem"] = { tags = {} },
  ["sorrow"] = { tags = {} },
  ["decay"] = { tags = {} },
  ["gloom"] = { tags = {} },
  ["drought"] = { tags = {} },
  ["profanity"] = { tags = {} },
  ["destitution"] = { tags = {} },
  ["dissolution"] = { tags = {} },
  ["darkness"] = { tags = {} },
  ["retribution"] = { tags = {} },
  ["agony"] = { tags = {} },
  ["oblivion"] = { tags = {} },
  ["ruin"] = { tags = {} },
  ["imprisonment"] = { tags = {} },
  ["terror"] = { tags = {} },
  ["spite"] = { tags = {} },
  ["discord"] = { tags = {} },
  ["aggression"] = { tags = {} },
  ["calamity"] = { tags = {} },
  ["woe"] = { tags = {} },

  -- neutral
  ["war"] = { tags = {}},
  ["battle"] = { tags = {} },
  ["mirage"] = { tags = {"desert"} },
  ["fate"] = { tags = {} },
  ["ruin"] = { tags = {} },
  ["uprising"] = { tags = {} },
  ["revolt"] = { tags = {} },
  ["relic"] = { tags = {} },
  ["indignation"] = { tags = {} },
  ["duty"] = { tags = {} },
}

WordRepository.crafts = {
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

WordRepository.substances = {
  -- countable
  ["fern"] = { tags = {"forest"} },
  ["vine"] = { tags = {"forest"} },
  ["tree"] = { tags = {"forest"} },
  ["root"] = { tags = {"forest"} },
  ["leaf"] = { tags = {"forest"} },
  ["briar"] = { tags = {"forest"} },
  ["thorn"] = { tags = {"forest"} },
  ["thistle"] = { tags = {"forest"} },
  ["branch"] = { tags = {"forest"} },
  ["fire"] = { tags = {"fire"} },
  ["ash"] = { tags = {"fire","death"}, golem=true},
  ["grave"] = { tags = {"death"} },
  ["tomb"] = { tags = {"death"} },
  ["crypt"] = { tags = {"death"} },
  ["gallow"] = { tags = {} },
  ["tide"] = { tags = {"sea"} },
  ["wave"] = { tags = {"sea"} },
  ["spore"] = { tags = {"forest"} },
  ["pearl"] = { tags = {"sea"} },
  ["barnacle"] = { tags = {"sea", golem=true} },
  ["mangrove"] = { tags = {"swamp"} },
  ["reed"] = { tags = {"swamp"} },
  ["flame"] = { tags = {} },
  ["plume"] = { tags = {} },
  ["rose"] = { tags = {} },
  ["chain"] = { tags = {} },
  ["fetter"] = { tags = {} },
  ["crop"] = { tags = {} },
  ["corpse"] = { tags = {} },
  ["crystal"] = { tags = {} },
  ["flower"] = { tags = {} },
  ["sprout"] = { tags = {"forest"} },
  ["herb"] = { tags = {} },
  ["seed"] = { tags = {} },
  ["tax"] = { tags = {} },
  ["tithe"] = { tags = {} },
  ["alm"] = { tags = {} },

  -- uncountable
  ["moss"] = { tags = {"forest"}, golem=true},
  ["brush"] = { tags = {"forest"} },
  ["wood"] = { tags = {"forest"}, golem=true},
  ["timber"] = { tags = {"forest"} },
  ["soil"] = { tags = {"forest"} },
  ["ice"] = { tags = {"cold"}, golem=true},
  ["snow"] = { tags = {"cold"} },
  ["coral"] = { tags = {"sea"}, golem=true},
  ["driftwood"] = { tags = {"sea"}, golem=true},
  ["kelp"] = { tags = {"sea"} },
  ["sand"] = { tags = {"desert"}, golem=true},
  ["bush"] = { tags = {} },
  ["salt"] = { tags = {} },
  ["honey"] = { tags = {} },
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
  ["livestock"] = { tags = {} },
  ["ink"] = { tags = {"sea"} },
  ["jasmine"] = { tags = {} },
  ["orchid"] = { tags = {} },
  ["juniper"] = { tags = {} },
  ["lotus"] = { tags = {} },
  ["ivory"] = { tags = {} },
  ["granite"] = { tags = {} },
  ["opal"] = { tags = {} },
  ["marble"] = { tags = {} },
  ["nectar"] = { tags = {} },
  ["rust"] = { tags = {} },
}

WordRepository.characterAdjectives = {
  -- positive
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
  ["heretic"] = { tags = {} },
  ["resplendent"] = { tags = {} },
  ["steadfast"] = { tags = {} },
  ["valiant"] = { tags = {} },
  ["artful"] = { tags = {} },
  ["lustrous"] = { tags = {} },
  ["merciful"] = { tags = {} },
  ["ardent"] = { tags = {} },
  ["worthy"] = { tags = {} },
  ["stalwart"] = { tags = {} },
  ["clever"] = { tags = {"int"} },
  ["beautiful"] = { tags = {} },
  ["loyal"] = { tags = {} },
  ["pious"] = { tags = {} },
  ["dutiful"] = { tags = {} },
  ["enlightened"] = { tags = {"int"} },
  ["exquisite"] = { tags = {} },
  ["faithful"] = { tags = {} },
  ["mighty"] = { tags = {"str"} },
  ["gallant"] = { tags = {} },
  ["generous"] = { tags = {} },
  ["innocent"] = { tags = {} },
  ["oathsworn"] = { tags = {} },
  ["glorious"] = { tags = {} },
  ["stalwart"] = { tags = {} },
  ["humble"] = { tags = {} },
  ["imposing"] = { tags = {} },
  ["noble"] = { tags = {} },
  ["pristine"] = { tags = {} },
  ["profound"] = { tags = {} },
  ["pure"] = { tags = {} },
  ["radiant"] = { tags = {} },
  ["righteous"] = { tags = {} },
  ["worthy"] = { tags = {} },
  ["regal"] = { tags = {} },
  ["resilient"] = { tags = {} },
  ["belevolent"] = { tags = {} },
  ["selfless"] = { tags = {} },
  ["paragon of ____"] = { tags = {} },
  ["sublime"] = { tags = {} },
  ["swift"] = { tags = {} },
  ["luminous"] = { tags = {} },
  ["tempered"] = { tags = {} },
  ["exalted"] = { tags = {} },
  ["trustworthy"] = { tags = {} },
  ["unflinching"] = { tags = {} },
  ["venerable"] = { tags = {} },
  ["implacable"] = { tags = {} },
  ["wizened"] = { tags = {} },

  -- negative
  ["foul"] = { tags = {} },
  ["lost"] = { tags = {} },
  ["mad"] = { tags = {} },
  ["merciless"] = { tags = {} },
  ["abhorrent"] = { tags = {} },
  ["decadent"] = { tags = {} },
  ["sadistic"] = { tags = {} },
  ["impostor"] = { tags = {} },
  ["usurper"] = { tags = {} },
  ["pariah"] = { tags = {} },
  ["grizzly"] = { tags = {} },
  ["volatile"] = { tags = {} },
  ["fell"] = { tags = {} },
  ["profane"] = { tags = {} },
  ["ignorant"] = { tags = {} },
  ["putrid"] = { tags = {} },
  ["selfish"] = { tags = {} },
  ["weary"] = { tags = {} },
  ["malignant"] = { tags = {} },
  ["grotesque"] = { tags = {} },
  ["monstrous"] = { tags = {} },
  ["tainted"] = { tags = {} },

  -- neutral
  ["ancient"] = { tags = {} },
  ["elder"] = { tags = {} },
  ["forgotten"] = { tags = {} },
  ["eternal"] = { tags = {} },
  ["vigilant"] = { tags = {} },
  ["solemn"] = { tags = {} },
  ["silent"] = { tags = {} },
  ["austere"] = { tags = {} },
  ["celestial"] = { tags = {} },
  ["vengeful"] = { tags = {} },
  ["eager"] = { tags = {} },
  ["calm"] = { tags = {} },
  ["serene"] = { tags = {} },
  ["etherial"] = { tags = {} },
  ["obstinate"] = { tags = {} },
  ["ageless"] = { tags = {} },
  ["penitent"] = { tags = {} },
  ["watchful"] = { tags = {} },
  ["restless"] = { tags = {} },
  ["stern"] = { tags = {} },
  ["undead"] = { tags = {} },
  ["unsettled"] = { tags = {} },
  ["fallen"] = { tags = {} },
  ["harbinger of ___"] = { tags = {} },
  ["voracious"] = { tags = {} },
}

WordRepository.attributes = {
  -- physical
  ["eye"] = { tags = {} },
  ["face"] = { tags = {} },
  ["name"] = { tags = {} },
  ["blood"] = { tags = {} },
  ["skull"] = { tags = {} },
  ["bone"] = { tags = {} },

  -- metaphorical
  ["heart"] = { tags = {} },
  ["soul"] = { tags = {} },

}

WordRepository.attires = {
  ["mask"] = { tags = {} },
  ["hood"] = { tags = {} },
  ["cloak"] = { tags = {} },
  ["veil"] = { tags = {} },
  ["glove"] = { tags = {} },
  ["shroud"] = { tags = {} },
  ["insignia"] = { tags = {} },
  ["crown"] = { tags = {} },
  ["banner"] = { tags = {} },
  ["standard"] = { tags = {} },
}

WordRepository.equipments = {
  ["arrow"] = { tags = {} },
  ["sword"] = { tags = {} },
  ["spear"] = { tags = {} },
  ["mace"] = { tags = {} },
  ["hammer"] = { tags = {} },
  ["shield"] = { tags = {} },
  ["bow"] = { tags = {} },
  ["lance"] = { tags = {} },
  ["blade"] = { tags = {} },
  ["scythe"] = { tags = {} },
  ["harpoon"] = { tags = {} },
  ["axe"] = { tags = {} },
  ["torch"] = { tags = {} },
}

WordRepository.positions = {
  -- occupation
  ["servant"] = { tags = {} },
  ["mariner"] = { tags = {"sea"} },
  ["sherpa"] = { tags = {} },
  ["guide"] = { tags = {} },
  ["scout"] = { tags = {} },
  ["engineer"] = { tags = {} },
  ["miner"] = { tags = {} },
  ["artificer"] = { tags = {} },
  ["jailer"] = { tags = {} },
  ["page"] = { tags = {} },
  ["herald"] = { tags = {} },
  ["apothecary"] = { tags = {} },
  ["archaeologist"] = { tags = {} },
  ["alchemist"] = { tags = {} },
  ["blacksmith"] = { tags = {} },
  ["healer"] = { tags = {} },
  ["archivist"] = { tags = {} },
  ["gardener"] = { tags = {} },
  ["grave-keeper"] = { tags = {} },
  ["trapper"] = { tags = {} },
  ["inn-keeper"] = { tags = {} },
  ["tavern-keeper"] = { tags = {} },
  ["shop-keeper"] = { tags = {} },
  ["shield-bearer"] = { tags = {} },
  ["cartographer"] = { tags = {} },
  ["peddler"] = { tags = {} },
  ["courrier"] = { tags = {} },
  ["storyteller"] = { tags = {} },
  ["conjurer"] = { tags = {} },
  ["enchanter"] = { tags = {} },
  ["apprentice"] = { tags = {} },
  ["monk"] = { tags = {} },
  ["artisan"] = { tags = {} },
  ["architect"] = { tags = {} },
  ["trainer"] = { tags = {} },
  ["thrall"] = { tags = {} },
  ["inquisitor"] = { tags = {} },
  ["salvager"] = { tags = {"sea"} },
  ["__smith"] = { tags = {} },
  ["__ crafter"] = { tags = {} },
  ["guru"] = { tags = {} },
  ["chronicler"] = { tags = {} },
  ["moneychanger"] = { tags = {} },
  ["courtier"] = { tags = {} },

  ["missionary"] = { tags = {} },
  ["augur"] = { tags = {} },
  ["peasant"] = { tags = {} },
  ["ranger"] = { tags = {} },
  ["elder"] = { tags = {} },
  ["herbalist"] = { tags = {} },
  ["skald"] = { tags = {} },
  ["__ catcher"] = { tags = {} },
  ["farmer"] = { tags = {} },
  ["__peddlar"] = { tags = {} },

  -- non-occupation
  ["__robber"] = { tags = {} },
  ["philosopher"] = { tags = {} },
  ["__dancer"] = { tags = {} },
  ["adventurer"] = { tags = {} },
  ["wizard"] = { tags = {} },
  ["mage"] = { tags = {} },
  ["sorceror"] = { tags = {} },
  ["asassin"] = { tags = {} },
  ["smuggler"] = { tags = {} },
  ["warlock"] = { tags = {} },
  ["witch"] = { tags = {} },
  ["outcast"] = { tags = {} },
  ["hermit"] = { tags = {} },
  ["recluse"] = { tags = {} },
  ["wayfarer"] = { tags = {} },
  ["informant"] = { tags = {} },
  ["drifter"] = { tags = {} },
  ["beggar"] = { tags = {} },
  ["sellsword"] = { tags = {} },
  ["bounty hunter"] = { tags = {} },
  ["warrior"] = { tags = {} },


  -- tied to s.t.
  ["ward"] = { tags = {} },
  ["warden"] = { tags = {} },
  ["patron"] = { tags = {"male"} },
  ["matron"] = { tags = {"female"} },
  ["patriarch"] = { tags = {}, gender = {"male"} },
  ["matriarch"] = { tags = {}, gender = {"female"} },
  ["squire"] = { tags = {} },
  ["counselor"] = { tags = {} },
  ["sentinel"] = { tags = {} },
  ["curator"] = { tags = {} },
  ["bureaucrat"] = { tags = {} },
  ["castellan"] = { tags = {} },
  ["professor"] = { tags = {} },
  ["outrider"] = { tags = {} },
  ["denizen"] = { tags = {} },
  ["custodian"] = { tags = {} },
  ["sentry"] = { tags = {} },
  ["master"] = { tags = {} },
  ["custodian"] = { tags = {} },
  ["officiant"] = { tags = {} },
  ["headmaster"] = { tags = {} },
  ["usher"] = { tags = {} },

  -- offocial role
  ["captain"] = { tags = {"sea"} },
  ["navigator"] = { tags = {"sea"} },
  ["admiral"] = { tags = {} },
  ["marshal"] = { tags = {} },
  ["chaplain"] = { tags = {} },
  ["vizier"] = { tags = {} },
  ["emissary"] = { tags = {} },
  ["chancellor"] = { tags = {} },
  ["officer"] = { tags = {} },
  ["chieftain"] = { tags = {} },
  ["magistrate"] = { tags = {} },
  ["heirophant"] = { tags = {} },
  ["oligarch"] = { tags = {} },
  ["pontiff"] = { tags = {} },
  ["foot soldier"] = { tags = {} },
  ["constable"] = { tags = {} },
  ["borderguard"] = { tags = {} },
}

WordRepository.titles = {
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

WordRepository.relations = {
  -- family
  ["brother"] = { tags = {}, gender = {"male"} },
  ["sister"] = { tags = {}, gender = {"female"} },
  ["father"] = { tags = {}, gender = {"male"} },
  ["mother"] = { tags = {}, gender = {"female"} },
  ["son"] = { tags = {}, gender = {"male"} },
  ["daughter"] = { tags = {}, gender = {"female"} },
  ["child"] = { tags = {}, gender = {} },
  ["consort"] = { tags = {} },
  ["husband"] = { tags = {}, gender = {"male"} },
  ["wife"] = { tags = {}, gender = {"female"} },
  ["descendent"] = { tags = {} },
  ["retainer"] = { tags = {} },
  ["bodyguard"] = { tags = {} },
  ["kin"] = { tags = {} },
  ["bride"] = { tags = {"female"} },
  ["groom"] = { tags = {"male"} },
  ["orphan"] = { tags = {} },
  ["offspring"] = { tags = {} },
  ["scion"] = { tags = {} },

  -- ally
  ["liege"] = { tags = {} },
  ["disciple"] = { tags = {} },
  ["fellow"] = { tags = {} },
  ["devotee"] = { tags = {} },
  ["ally"] = { tags = {} },
  ["vassal"] = { tags = {} },
  ["attendant"] = { tags = {} },
  ["companion"] = { tags = {} },
  ["mentor"] = { tags = {} },

  -- antagonist
  ["scourge"] = { tags = {} },
  ["butcher"] = { tags = {} },
  ["stalker"] = { tags = {} },
}

WordRepository.socialGroups = {
  -- bond
  ["brotherhood"] = { tags = {}, gender = {"male"} },
  ["sisterhood"] = { tags = {}, gender = {"female"} },
  ["house"] = { tags = {} },
  ["clan"] = { tags = {} },
  ["tribe"] = { tags = {} },
  ["fellowship"] = { tags = {} },
  ["company"] = { tags = {} },

  -- official
  ["priesthood"] = { tags = {}, gender = {"male"} },
  ["militia"] = { tags = {} },
  ["guild"] = { tags = {} },
  ["conclave"] = { tags = {} },
  ["clergy"] = { tags = {} },
  ["infantry"] = { tags = {} },
  ["__watch"] = { tags = {} },
  ["patrol"] = { tags = {} },
  ["battalion"] = { tags = {} },

  -- interest
  ["order"] = { tags = {} },
  ["circle"] = { tags = {} },
  ["horde"] = { tags = {} },
  ["cult"] = { tags = {} },
  ["faithful"] = { tags = {} },
  ["uprising"] = { tags = {} },
}

WordRepository.verbs = {
  -- active
  ["slay"] = { sp = "slay", pp = "slain", doer = "slayer", tags={} },
  ["burn"] = { sp = "burn", pp = "burnt", doer = "burner", tags={} },
  ["defile"] = { sp = "defile", pp = "defiled", doer = "defiler", tags={} },
  ["tame"] = { sp = "tame", pp = "tamed", doer = "tamer", tags={} },
  ["trap"] = { sp = "trap", pp = "trapped", doer = "trapper" },
  ["drown"] = { sp = "drown", pp = "drowned", doer = "drowner", tags={"sea, river"} },
  ["conquer"] = { sp = "conquer", pp = "conquered", doer = "conquerer", tags={} },
  ["crush"] = { sp = "crush", pp = "crushed", doer = "crusher", tags={} },
  ["strike"] = { sp = "strike", pp = "struck", doer = "striker", tags={} },
  ["gaze"] = { sp = "gaze", pp = "gazed", doer = "gazer", tags={} },
  ["watch"] = { sp = "watch", pp = "watched", doer = "watcher", tags={} },
  ["bring"] = { sp = "bring", pp = "brought", doer = "bringer", tags={} },
  ["drink"] = { sp = "drink", pp = "drunk", doer = "drinker", tags={} },
  ["keep"] = { sp = "keep", pp = "kept", doer = "keeper", tags={} },
  ["defend"] = { sp = "defend", pp = "defended", doer = "defender", tags={} },
  ["protect"] = { sp = "protect", pp = "protected", doer = "protector", tags={} },
  ["scorn"] = { sp = "scorn", pp = "scorned", doer = "scorner", tags={} },
  ["exile"] = { sp = "exile", pp = "exiled", doer = "exiler", tags={} },
  ["abolish"] = { sp = "abolish", pp = "abolished", doer = "abolisher", tags={} },
  ["charm"] = { sp = "charm", pp = "charmed", doer = "charmer", tags={} },
  ["enforce"] = { sp = "enforce", pp = "renewed", doer = "renewer", tags={} },
  ["purify"] = { sp = "purify", pp = "purified", doer = "purifier", tags={} },
  ["weave"] = { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
  ["breathe"] = { sp = "breathe", pp = "breathed", doer = "breather", tags={} },
  ["mourn"] = { sp = "mourn", pp = "mourned", doer = "mourner", tags={} },
  ["devastate"] = { sp = "devastate", pp = "devastated", doer = "devastator", tags={} },
  ["subdue"] = { sp = "subdue", pp = "subdued", doer = "subduer", tags={} },
  ["weave"] = { sp = "weave", pp = "weaved", doer = "weaver", tags={} },
  ["mend"] = { sp = "mend", pp = "mended", doer = "mender", tags={} },
  ["hunt"] = { sp = "hunt", pp = "hunted", doer = "hunter", tags={} },
  ["assail"] = { sp = "assail", pp = "assailed", doer = "assailant", tags={} },
  ["defy"] = { sp = "defy", pp = "defied", doer = "defier", tags={} },

  -- both
  ["seek"] = { sp = "seek", pp = "sought", doer = "seeker", tags={} },
  ["speak"] = { sp = "speak", pp = "spoken", doer = "speaker", tags={} },
  ["deliver"] = { sp = "deliver", pp = "delivered", doer = "delivered", tags={} },
  ["forge"] = { sp = "forge", pp = "forged", doer = "forger", tags={} },
  ["bury"] = { sp = "bury", pp = "buried", doer = "burier", tags={} },
  ["embrace"] = { sp = "embrace", pp = "embraced", doer = "embracer", tags={} },
  ["shun"] = { sp = "shun", pp = "shunned", doer = "shunner", tags={} },
  ["absolve"] = { sp = "absolve", pp = "absolved", doer = "absolver", tags={} },
  ["enchant"] = { sp = "enchant", pp = "enchanted", doer = "enchanter", tags={} },
  ["conjur"] = { sp = "conjur", pp = "conjured", doer = "conjurer", tags={} },
  ["summon"] = { sp = "summon", pp = "summoned", doer = "summoner", tags={} },
  ["deliver"] = { sp = "deliver", pp = "delivered", doer = "deliverer", tags={} },
  ["renew"] = { sp = "renew", pp = "renewed", doer = "renewer", tags={} },
  ["exalt"] = { sp = "exalt", pp = "exalted", doer = "exalter", tags={} },
  ["favour"] = { sp = "favour", pp = "favoured", doer = "favourer", tags={} },
  ["anoint"] = { sp = "anoint", pp = "anointed", doer = "anointer", tags={} },
  ["banish"] = { sp = "banish", pp = "banished", doer = "banisher", tags={} },
  ["punish"] = { sp = "punish", pp = "punished", doer = "punisher", tags={} },
  ["light"] = { sp = "light", pp = "lighted", doer = "lighter", tags={} },
  ["bestow"] = { sp = "bestow", pp = "bestowed", doer = "bestower", tags={} },
  ["preserve"] = { sp = "preserve", pp = "preserved", doer = "preserver", tags={} },
  ["ensnare"] = { sp = "ensnare", pp = "ensnared", doer = "ensnarer", tags={} },
  ["deceive"] = { sp = "deceive", pp = "deceived", doer = "deceiver", tags={} },
  ["possess"] = { sp = "possess", pp = "possessed", doer = "possessor", tags={} },
  ["take"] = { sp = "take", pp = "taken", doer = "taker", tags={} },
  ["corrupt"] = { sp = "corrupt", pp = "assailed", doer = "assailant", tags={} },
  ["excommunicate"] = { sp = "excommunicate", pp = "assailed", doer = "assailant", tags={} },
  ["purge"] = { sp = "purge", pp = "purged", doer = "purger", tags={} },
  ["cleanse"] = { sp = "cleanse", pp = "cleansed", doer = "cleanser", tags={} },
  ["consecrate"] = { sp = "consecrate", pp = "consecrated", doer = "consecrator", tags={} },

  -- passive
  ["eat"] = { sp = "eat", pp = "eaten", doer = "eater", tags={} },
  ["see"] = { sp = "see", pp = "seen", doer = "seer", tags={} },
  ["soak"] = { sp = "soak", pp = "soaked", doer = "soaker", tags={} },
  ["bless"] = { sp = "bless", pp = "blessed", doer = "blesser", tags={} },
  ["curse"] = { sp = "curse", pp = "cursed", doer = "curser", tags={} },
  ["ascend"] = { sp = "ascend", pp = "ascended", doer = "ascender", tags={} },
  ["guide"] = { sp = "guide", pp = "guided", doer = "guider", tags={} },
  ["adorn"] = { sp = "adorn", pp = "adorned", doer = "adorner", tags={} },
  ["condemn"] = { sp = "condemn", pp = "condemnd", doer = "condemner", tags={} },
  ["redeem"] = { sp = "redeem", pp = "redeemed", doer = "redeemer", tags={} },
  ["nurture"] = { sp = "nurture", pp = "nurtured", doer = "nurturer", tags={} },
  ["atone"] = { sp = "atone", pp = "atoned", doer = "atoner", tags={} },
  ["pierce"] = { sp = "pierce", pp = "pierced", doer = "piercer", tags={} },
  ["inspire"] = { sp = "inspire", pp = "inspired", doer = "inspirer", tags={} },
  ["forbid"] = { sp = "forbid", pp = "forbidden", doer = "forbidder", tags={} },
  ["kindle"] = { sp = "kindle", pp = "kindled", doer = "kindler", tags={} },
  ["entangle"] = { sp = "entangle", pp = "assailed", doer = "assailant", tags={} },
  ["devour"] = { sp = "devour", pp = "devoured", doer = "devourer", tags={} },

  -- other
  ["yield"] = { sp = "yield", pp = "yielded", doer = "yielder", tags={} },
  ["despair"] = { sp = "despair", pp = "despaired", doer = "despairer", tags={} },
  ["blossom"] = { sp = "blossom", pp = "blossomed", doer = "blossomer", tags={} },
  ["endure"] = { sp = "endure", pp = "assailed", doer = "assailant", tags={} },
  ["expose"] = { sp = "expose", pp = "exposed", doer = "exposer", tags={} },
}

WordRepository.landscapes = {
  -- large-scale
  ["mountain"] = { tags = {} },
  ["desert"] = { tags = {} },
  ["forest"] = { tags = {} },
  ["swamp"] = { tags = {} },
  ["steppe"] = { tags = {} },
  ["wastes"] = { tags = {} },
  ["wilderness"] = { tags = {} },
  ["tundra"] = { tags = {} },
  ["plains"] = { tags = {} },

  -- specific
  ["jungle"] = { tags = {} },
  ["rainforest"] = { tags = {} },
  ["cloud forest"] = { tags = {} },
  ["grassland"] = { tags = {} },
  ["bay"] = { tags = {} },
  ["island"] = { tags = {} },


  -- small-scale
  ["falls"] = { tags = {} },
  ["shoal"] = { tags = {} },
  ["rapids"] = { tags = {} },
  ["atoll"] = { tags = {} },
  ["oasis"] = { tags = {} },
  ["wadi"] = { tags = {} },
  ["grove"] = { tags = {} },
  ["crag"] = { tags = {} },
  ["canyon"] = { tags = {} },
  ["dune"] = { tags = {} },
  ["meadow"] = { tags = {} },
  ["depths"] = { tags = {} },
  ["river"] = { tags = {} },
  ["marsh"] = { tags = {} },
  ["moor"] = { tags = {} },


  -- suffixes
  ["__lands"] = { tags = {} },
  ["__realms"] = { tags = {} },
  ["__scape"] = { tags = {} },
  ["__territory"] = { tags = {} },
}

WordRepository.meteorologies = {
  -- sky
  ["sky"] = { tags = {} },
  ["sun"] = { tags = {} },
  ["sunlight"] = { tags = {} },
  ["sunrise"] = { tags = {} },
  ["sunset"] = { tags = {} },
  ["moon"] = { tags = {} },
  ["moonlight"] = { tags = {} },
  ["dawn"] = { tags = {} },
  ["dusk"] = { tags = {} },
  ["night"] = { tags = {} },
  ["star"] = { tags = {} },
  ["aurora"] = { tags = {"cold"} },
  ["cloud"] = { tags = {} },

  -- weather
  ["snow"] = { tags = {"cold"} },
  ["wind"] = { tags = {} },
  ["rain"] = { tags = {} },
  ["storm"] = { tags = {} },
  ["squall"] = { tags = {"sea"} },
  ["gale"] = { tags = {} },
  ["tempest"] = { tags = {} },
  ["thunder"] = { tags = {} },
  ["sandstorm"] = { tags = {"desert"} },
  ["blizzard"] = { tags = {"cold"} },
  ["fog"] = { tags = {"forest", "swamp"} },
  ["mist"] = { tags = {"forest", "swamp", "mountain"} },
  
  -- surface
  ["frost"] = { tags = {"cold"} },
  ["dew"] = { tags = {} },

  -- season
  ["winter"] = { tags = {"cold"} },
}

WordRepository.animals = {
  -- size
  -- dangerousness
  -- foodchain?

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
  ["crocodile"] = { tags = {"river"}, attributes={"tooth"} },
  ["gryphon"] = { tags = {"desert", "mountain"}, attributes={} },
  ["falcon"] = { tags = {}, attributes={"feather"} },
  ["eagle"] = { tags = {}, attributes={"feather"} },
  ["wyrm"] = { tags = {}, attributes={} },
  ["rukh"] = { tags = {}, attributes={"feather"} },
  ["kirin"] = { tags = {}, attributes={} },
  ["sparrow"] = { tags = {}, attributes={"feather"} },
  ["raven"] = { tags = {"cold"}, attributes={"feather"} },
  ["crow"] = { tags = {}, attributes={"feather"} },
  ["osprey"] = { tags = {}, attributes={"feather"} },
  ["ox"] = { tags = {"plains"}, attributes={"horn"} },
  ["lamb"] = { tags = {"plains"}, attributes={} },
  ["panther"] = { tags = {"forest"}, attributes={"tooth"} },
  ["jaguar"] = { tags = {"forest"}, attributes={"tooth"} },
  ["giant ___"] = { tags = {}, attributes={} },
  ["stag"] = { tags = {"forest"}, attributes={"antler"} },
  ["antelope"] = { tags = {"plains"}, attributes={"horn"} },
  ["drake"] = { tags = {}, attributes={} },
  ["wyvern"] = { tags = {}, attributes={} },
  ["lynx"] = { tags = {}, attributes={} },
  ["loon"] = { tags = {}, attributes={"feather"} },
  ["songbird"] = { tags = {}, attributes={"feather"} },
  ["crane"] = { tags = {}, attributes={"feather"} },
}

WordRepository.settlementDescriptions = {
  -- describe landscape
  ["boreal"] = { tags = {"city"} },

  -- describe role
  ["mining"] = { tags = {"village","town"} },
  ["farming"] = { tags = {"village","town"} },
  ["fishing"] = { tags = {"village","town"} },
  ["port"] = { tags = {"town","city"} },
  ["trading"] = { tags = {"city"} },
  ["imperial"] = { tags = {"city"} },
  ["royal"] = { tags = {"city"} },

  -- describe vibe
  ["holy"] = { tags = {"city"} },
  ["graven"] = { tags = {"village","town","city"} },
  ["hallowed"] = { tags = {"village","town","city"} },
  ["haunted"] = { tags = {"village","town","city"} },
  ["arcane"] = { tags = {"village","town","city"} },
  ["primordeal"] = { tags = {"village","town","city"} },
  ["overgrown"] = { tags = {"village","town","city"} },
  ["rustic"] = { tags = {"village","town"} },
}

WordRepository.settlements = {
    --   1: small village
    ["village"] = { tags = {} },

    --   5: medium town
    ["town"] = { tags = {} },
  
    --   10: major city
    ["city"] = { tags = {} },

    ["necropolis"] = { tags = {} },  

    -- mega-city locations:
    -- __ district
    -- __town
    -- __slums
    -- __ghetto
    -- old__
    -- colliseum
    -- plaza
    -- barracks
    -- guardhouse
    -- gate
    -- prison, dungeon
    -- harbour
    -- church, chappel, temple, shrine, basilica,
    -- academy, library, university
    -- mega-city central locations:
    -- citadel
    -- palace
    -- cistern
    -- sewers
}

WordRepository.buildings = {
    -- LOCATION TYPES

  -- -- fortification
  -- --  1: encampment
  ["lookout"] = { tags = {} },

  -- --  2: outpost
  ["fort"] = { tags = {} },
  ["hold"] = { tags = {} },

  -- --  5: fort
  ["fortress"] = { tags = {} },
  ["citadel"] = { tags = {} },
  -- --  6: fortress
  -- --  10: castle
  ["castle"] = { tags = {} },
  -- -- establishment
  -- --   1: farm
  ["farm"] = { tags = {} },
  ["mill"] = { tags = {} },
  ["mine"] = { tags = {} },
  ["quarry"] = { tags = {} },
  ["forge"] = { tags = {} },
  ["caravan"] = { tags = {} },
  ["vault"] = { tags = {} },
  -- --   5: estate
  ["estate"] = { tags = {} },

  -- --   10: palace
  ["manor"] = { tags = {} },
  ["palace"] = { tags = {} },

  -- -- dwelling
  -- --  1: 
  -- --  5:
  -- --  10: 

  -- ["university"] = { tags = {} },
  -- ["academy"] = { tags = {} },
  -- ["library"] = { tags = {} },

  -- ["chapel"] = { tags = {} },
  -- ["church"] = { tags = {} },
  -- ["basilica"] = { tags = {} },

  -- ["temple"] = { tags = {} },
  -- ["shrine"] = { tags = {} },
  -- ["sanctuary"] = { tags = {} },

  -- ["monestary"] = { tags = {} },
  -- ["abbey"] = { tags = {} },
  
  -- ["tomb"] = { tags = {} },
  -- ["boneyard"] = { tags = {} },
  -- ["charnal ground"] = { tags = {} },

  -- ["fairgrounds"] = { tags = {} },
  -- ["monument"] = { tags = {} },
  -- ["bridge"] = { tags = {"river"} },
  -- ["tower"] = { tags = {} },
  -- ["dungeon"] = { tags = {} },
  -- ["ruins"] = { tags = {} },

}

WordRepository.wildLocations = {
  ["den"] = { tags = {} },
  ["hovel"] = { tags = {} },
  ["lair"] = { tags = {} },
  ["cave"] = { tags = {} },
  ["hideout"] = { tags = {} },
  ["camp"] = { tags = {} },
  ["encampment"] = { tags = {} },
  ["grotto"] = { tags = {} },
  ["sanctuary"] = { tags = {} },
  ["field"] = { tags = {} },
  ["cairn"] = { tags = {} },
}

WordRepository.dwellings = {
  ["resting place"] = { tags = {} },
  ["grave"] = { tags = {} },
  ["gathering place"] = { tags = {} },
  ["garden"] = { tags = {} },
  ["cemetary"] = { tags = {} },
  ["fissure"] = { tags = {} },
  ["pasture"] = { tags = {} },
  ["farmstead"] = { tags = {} },
  ["___ing grounds"] = { tags = {} },
  ["homestead"] = { tags = {} },
  ["pit"] = { tags = {} },
}

WordRepository.buildingFeatures = {
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

WordRepository.events = {
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

function WordRepository:animalAttribute(animal)
  if #animal.attributes > 0 then
    return random(animal.attributes)
  else
    return "NO ATTRIBUTE"
  end
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
    self:building(),
    self:dwelling()
  }).name

  print(self:meteorology().name..self:landscape().name)
  print(self:meteorology().name..self:equipment().name)
  print(self:meteorology().name..self:attire().name)
  print(self:meteorology().name..self:animalAttribute(self:animal()))



  print(self:color().name..self:landscape().name)
  print(self:color().name..self:equipment().name)
  print(self:color().name..self:attire().name)
  print(self:substance().name..self:equipment().name)
  print(self:substance().name..self:attire().name)
  print(self:color().name..self:animal().name)

  print(self:substance().name..self:animalAttribute(self:animal()))
  print(self:color().name..self:animalAttribute(self:animal()))

  print(self:substance().name..self:animal().name)
  print("------------------------------")

  -- return word1..word2
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


