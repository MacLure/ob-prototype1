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
  ["mercy"] = { tags = {}, adj="merciful" },
  ["justice"] = { tags = {}, adj="just" },
  ["heritage"] = { tags = {} },
  ["tradition"] = { tags = {} },
  ["preservation"] = { tags = {}, verb="preserve" },
  ["lore"] = { tags = {} },
  ["rejuvination"] = { tags = {}, verb="rejuvinate" },
  ["restoration"] = { tags = {}, verb="restore" },
  ["tranquility"] = { tags = {}, adj = "tranquil" },
  ["serenity"] = { tags = {}, adj="serene" },
  ["radiance"] = { tags = {}, adj="radiant" },
  ["splendor"] = { tags = {}, adj="splendid" },

  -- negative
  ["death"] = { tags = {}, adj="dead" },
  ["shadow"] = { tags = {}, adj="shadowy" },
  ["woe"] = { tags = {}, adj="woeful" },
  ["gloom"] = { tags = {}, adj="gloomy" },
  ["sorrow"] = { tags = {}, adj="sorrowful" },
  ["rot"] = { tags = {}, adj="rotten" },
  ["decay"] = { tags = {}, verb="decay" },
  ["drought"] = { tags = {} },
  ["ruin"] = { tags = {}, verb="ruin" },
  ["disease"] = { tags = {}, adj="diseased" },
  ["plague"] = { tags = {} },
  ["pox"] = { tags = {} },
  ["perdition"] = { tags = {} },
  ["retribution"] = { tags = {} },
  ["profanity"] = { tags = {}, adj="profane" },
  ["darkness"] = { tags = {}, adj="dark" },
  ["abomination"] = { tags = {}, adj="abominable" },
  ["fear"] = { tags = {}, verb="fear" },
  ["terror"] = { tags = {} },
  ["agony"] = { tags = {} },
  ["servitude"] = { tags = {}, verb="serve" },
  ["imprisonment"] = { tags = {} },
  ["destitution"] = { tags = {}, adj="destitute" },
  ["dissolution"] = { tags = {} },
  ["darkness"] = { tags = {}, adj="dark" },
  ["oblivion"] = { tags = {} },
  ["spite"] = { tags = {}, adj="spiteful" },
  ["discord"] = { tags = {} },
  ["aggression"] = { tags = {} },
  ["destruction"] = { tags = {}, verb="destroy" },
  ["wrath"] = { tags = {}, adj="wrathful" },
  ["anguish"] = { tags = {} },
  ["strife"] = { tags = {} },
  ["disorder"] = { tags = {} },
  ["mayhem"] = { tags = {} },
  ["calamity"] = { tags = {}, adj="calamitous" },

  -- neutral
  ["war"] = { tags = {}},
  ["battle"] = { tags = {} },
  ["mirage"] = { tags = {"desert"} },
  ["fate"] = { tags = {}, adj="fateful" },
  ["uprising"] = { tags = {} },
  ["revolt"] = { tags = {} },
  ["relic"] = { tags = {} },
  ["indignation"] = { tags = {}, adj="indignant" },
  ["duty"] = { tags = {}, adj="dutiful" },
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
  ["splendid"] = { tags = {}, noun="splendor" },
  ["great"] = { tags = {}, noun="greatness" },
  ["brave"] = { tags = {"str"}, noun="braveness" },
  ["strong"] = { tags = {"str"}, noun="strength" },
  ["stout"] = { tags = {"str"} },
  ["wise"] = { tags = {"int"}, noun="wisdom" },
  ["wizened"] = { tags = {}, noun="wisdom" },
  ["learned"] = { tags = {"int"} },
  ["pious"] = { tags = {"faith"}, noun="piety" },
  ["devout"] = { tags = {"faith"}, noun="devotion" },
  ["pure"] = { tags = {}, noun="pureness" },
  ["divine"] = { tags = {}, noun="divinity" },
  ["heretic"] = { tags = {}, noun="heresy" },
  ["resplendent"] = { tags = {}, noun="splendor" },
  ["steadfast"] = { tags = {} },
  ["valiant"] = { tags = {}, noun="valor" },
  ["artful"] = { tags = {} },
  ["lustrous"] = { tags = {} },
  ["merciful"] = { tags = {}, noun="mercy" },
  ["ardent"] = { tags = {} },
  ["worthy"] = { tags = {}, noun="worth" },
  ["stalwart"] = { tags = {} },
  ["clever"] = { tags = {"int"} },
  ["beautiful"] = { tags = {}, noun="beauty" },
  ["loyal"] = { tags = {}, noun="loyalty" },
  ["dutiful"] = { tags = {}, noun="duty" },
  ["enlightened"] = { tags = {"int"}, noun="enlightenment" },
  ["exquisite"] = { tags = {} },
  ["faithful"] = { tags = {}, noun="faith" },
  ["mighty"] = { tags = {"str"}, noun="might" },
  ["gallant"] = { tags = {}, noun="gallantry" },
  ["generous"] = { tags = {}, noun="generosity" },
  ["innocent"] = { tags = {}, noun="innocence" },
  ["oathsworn"] = { tags = {}, noun="oath" },
  ["glorious"] = { tags = {}, noun="glory" },
  ["humble"] = { tags = {}, noun="humility" },
  ["imposing"] = { tags = {} },
  ["noble"] = { tags = {}, noun="nobility" },
  ["pristine"] = { tags = {} },
  ["profound"] = { tags = {}, noun="depth" },
  ["radiant"] = { tags = {}, noun="radiance" },
  ["righteous"] = { tags = {}, noun="righteousness" },
  ["regal"] = { tags = {}, noun="royalty" },
  ["resilient"] = { tags = {}, noun="resillience" },
  ["belevolent"] = { tags = {}, noun="benevolence" },
  ["selfless"] = { tags = {} },
  ["paragon of ____"] = { tags = {} },
  ["sublime"] = { tags = {} },
  ["swift"] = { tags = {}, noun="swiftness" },
  ["luminous"] = { tags = {}, noun="light" },
  ["tempered"] = { tags = {}, noun="temperance" },
  ["exalted"] = { tags = {}, noun="exaltation" },
  ["trustworthy"] = { tags = {}, noun="trust" },
  ["unflinching"] = { tags = {} },
  ["venerable"] = { tags = {} },
  ["implacable"] = { tags = {} },

  -- negative
  ["foul"] = { tags = {} },
  ["fell"] = { tags = {} },
  ["lost"] = { tags = {} },
  ["mad"] = { tags = {}, noun="madness" },
  ["merciless"] = { tags = {}, noun="merciful" },
  ["abhorrent"] = { tags = {} },
  ["decadent"] = { tags = {}, noun="decadence" },
  ["sadistic"] = { tags = {} },
  ["impostor"] = { tags = {} },
  ["pariah"] = { tags = {} },
  ["grizzly"] = { tags = {} },
  ["volatile"] = { tags = {} },
  ["profane"] = { tags = {}, noun="profanity" },
  ["ignorant"] = { tags = {}, noun="ignorance" },
  ["putrid"] = { tags = {}, noun="putrifaction" },
  ["selfish"] = { tags = {}, noun="selfishness" },
  ["weary"] = { tags = {} },
  ["malignant"] = { tags = {} },
  ["grotesque"] = { tags = {} },
  ["monstrous"] = { tags = {}, noun="monstrosity" },
  ["tainted"] = { tags = {}, verb="taint" },

  -- neutral
  ["ancient"] = { tags = {} },
  ["elder"] = { tags = {} },
  ["forgotten"] = { tags = {}, verb="forget" },
  ["eternal"] = { tags = {}, noun="eternity" },
  ["vigilant"] = { tags = {}, noun="vigilance" },
  ["solemn"] = { tags = {}, noun="solemnity" },
  ["silent"] = { tags = {}, noun="slience" },
  ["austere"] = { tags = {}, noun="austerity" },
  ["celestial"] = { tags = {}, noun="star" },
  ["vengeful"] = { tags = {}, noun="vengeance" },
  ["eager"] = { tags = {}, noun="eagerness" },
  ["calm"] = { tags = {}, noun="calmness" },
  ["serene"] = { tags = {}, noun="serenity" },
  ["etherial"] = { tags = {} },
  ["obstinate"] = { tags = {}, noun="obstinacy" },
  ["ageless"] = { tags = {}, noun="age" },
  ["penitent"] = { tags = {}, noun="penitence" },
  ["watchful"] = { tags = {}, verb="watch" },
  ["restless"] = { tags = {} },
  ["stern"] = { tags = {} },
  ["undead"] = { tags = {} },
  ["unsettled"] = { tags = {}, verb="settle" },
  ["fallen"] = { tags = {}, verb="fall" },
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
  ["voice"] = { tags = {} },
  ["aura"] = { tags = {} },
}

WordRepository.attires = {
  ["mask"] = { tags = {} },
  ["hood"] = { tags = {} },
  ["helm"] = { tags = {} },
  ["veil"] = { tags = {} },
  ["crown"] = { tags = {} },
  ["shroud"] = { tags = {} },
  ["robe"] = { tags = {} },
  ["cloak"] = { tags = {} },
  ["glove"] = { tags = {} },
  ["insignia"] = { tags = {} },
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
  ["pike"] = { tags = {} },
  ["greatsword"] = { tags = {} },
  ["greatshield"] = { tags = {} },
  ["net"] = { tags = {} },
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
  ["informant"] = { tags = {} },
  ["drifter"] = { tags = {} },
  ["beggar"] = { tags = {} },
  ["sellsword"] = { tags = {} },
  ["bounty hunter"] = { tags = {} },
  ["warrior"] = { tags = {} },

  -- wilderness
  ["outcast"] = { tags = {} },
  ["hermit"] = { tags = {} },
  ["recluse"] = { tags = {} },
  ["wayfarer"] = { tags = {} },
  ["sojourner"] = { tags = {} },
  ["nomad"] = { tags = {} },
  ["sheppard"] = { tags = {"faith"} },
  ["ascetic"] = { tags = {} },
  ["wanderer"] = { tags = {} },
  ["highwayman"] = { tags = {}, gender = {"male"} },
  ["highwaywoman"] = { tags = {}, gender = {"female"} },
  ["grave-robber"] = { tags = {} },
  ["crusader"] = { tags = {"faith"} },
  ["scavenger"] = { tags = {} },
  ["fugitive"] = { tags = {} },

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
  ["knight-errant"] = { tags = {} },
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
  ["inquisitor"] = { tags = {"faith"} },
  ["agent"] = { tags = {} },
  ["dweller"] = { tags = {} },
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
  ["brotherhood"] = { tags = {}, gender = {"male"}, relation="brother" },
  ["sisterhood"] = { tags = {}, gender = {"female"}, relation="sister" },
  ["house"] = { tags = {} },
  ["clan"] = { tags = {} },
  ["tribe"] = { tags = {} },
  ["fellowship"] = { tags = {}, relation="fellow" },
  ["company"] = { tags = {}, relation="companion" },

  -- official
  ["priesthood"] = { tags = {}, gender = {"male"}, relation="priest" },
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
  -- tie nouns in other lists to verbs
  -- remove non-exception pp and doer, and make a function to auto-generate regular
  -- active
  ["slay"] = { pp = "slain", tags={} },
  ["burn"] = { pp = "burnt", tags={} },
  ["defile"] = { pp = "defiled", tags={} },
  ["tame"] = { pp = "tamed", tags={} },
  ["trap"] = { pp = "trapped", doer = "trapper", tags={} },
  ["drown"] = { pp = "drowned", tags={"sea, river"} },
  ["conquer"] = { pp = "conquered", doer = "conqueror", tags={} },
  ["crush"] = { pp = "crushed", tags={} },
  ["strike"] = { pp = "struck", tags={} },
  ["gaze"] = { pp = "gazed", tags={} },
  ["watch"] = { pp = "watched", tags={} },
  ["bring"] = { pp = "brought", tags={} },
  ["drink"] = { pp = "drunk", tags={} },
  ["keep"] = { pp = "kept",  tags={} },
  ["defend"] = { pp = "defended", tags={} },
  ["protect"] = { pp = "protected", doer = "protector", tags={} },
  ["scorn"] = { pp = "scorned", tags={} },
  ["exile"] = { pp = "exiled", tags={} },
  ["abolish"] = { pp = "abolished", tags={} },
  ["charm"] = { pp = "charmed", tags={} },
  ["enforce"] = { pp = "renewed", tags={} },
  ["purify"] = { pp = "purified", tags={} },
  ["weave"] = { pp = "weaved", tags={} },
  ["breathe"] = { pp = "breathed", tags={} },
  ["mourn"] = { pp = "mourned", tags={} },
  ["devastate"] = { pp = "devastated", doer = "devastator", tags={} },
  ["subdue"] = { pp = "subdued", tags={} },
  ["weave"] = { pp = "weaved", tags={} },
  ["mend"] = { pp = "mended", tags={} },
  ["hunt"] = { pp = "hunted", tags={} },
  ["assail"] = { pp = "assailed", doer = "assailant", tags={} },
  ["defy"] = { pp = "defied", tags={} },

  -- both
  ["seek"] = { pp = "sought", tags={} },
  ["speak"] = { pp = "spoken", tags={} },
  ["deliver"] = { pp = "delivered", tags={} },
  ["forge"] = { pp = "forged", tags={} },
  ["bury"] = { pp = "buried", tags={} },
  ["embrace"] = { pp = "embraced", tags={} },
  ["shun"] = { pp = "shunned", doer = "shunner", tags={} },
  ["absolve"] = { pp = "absolved", tags={} },
  ["enchant"] = { pp = "enchanted", tags={} },
  ["conjur"] = { pp = "conjured", tags={} },
  ["summon"] = { pp = "summoned", tags={} },
  ["deliver"] = { pp = "delivered", tags={} },
  ["renew"] = { pp = "renewed", tags={} },
  ["exalt"] = { pp = "exalted",  tags={} },
  ["favour"] = { pp = "favoured", tags={} },
  ["anoint"] = { pp = "anointed", tags={} },
  ["banish"] = { pp = "banished", tags={} },
  ["punish"] = { pp = "punished", tags={} },
  ["light"] = { pp = "lighted", tags={} },
  ["bestow"] = { pp = "bestowed", tags={} },
  ["preserve"] = { pp = "preserved", tags={} },
  ["ensnare"] = { pp = "ensnared", tags={} },
  ["deceive"] = { pp = "deceived", tags={} },
  ["possess"] = { pp = "possessed", doer = "possessor", tags={} },
  ["take"] = { pp = "taken", tags={} },
  ["corrupt"] = { pp = "corrupted", doer = "corruptor", tags={} },
  ["excommunicate"] = { pp = "excommunicateed", doer = "excommunicator", tags={} },
  ["purge"] = { pp = "purged", tags={} },
  ["cleanse"] = { pp = "cleansed", tags={} },
  ["consecrate"] = { pp = "consecrated", doer = "consecrator", tags={} },

  -- passive
  ["eat"] = { pp = "eaten", tags={} },
  ["see"] = { pp = "seen", tags={} },
  ["soak"] = { pp = "soaked", tags={} },
  ["bless"] = { pp = "blessed", tags={} },
  ["curse"] = { pp = "cursed", tags={} },
  ["ascend"] = { pp = "ascended", tags={} },
  ["guide"] = { pp = "guided", doer = "guide", tags={} },
  ["adorn"] = { pp = "adorned", tags={} },
  ["condemn"] = { pp = "condemnd", tags={} },
  ["redeem"] = { pp = "redeemed", tags={} },
  ["nurture"] = { pp = "nurtured", tags={} },
  ["atone"] = { pp = "atoned", tags={} },
  ["pierce"] = { pp = "pierced", tags={} },
  ["inspire"] = { pp = "inspired", tags={} },
  ["forbid"] = { pp = "forbidden", doer = "forbidder", tags={} },
  ["kindle"] = { pp = "kindled", tags={} },
  ["entangle"] = { pp = "entangled", tags={} },
  ["devour"] = { pp = "devoured", tags={} },

  -- other
  ["yield"] = { pp = "yielded", tags={} },
  ["despair"] = { pp = "despaired", tags={} },
  ["blossom"] = { pp = "blossomed", tags={} },
  ["endure"] = { pp = "endured", tags={} },
  ["expose"] = { pp = "exposed", tags={} },
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
  ["curtain"] = { tags = {} },
  ["throne"] = { tags = {} },
  ["treasury"] = { tags = {} },
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
    "presence",
    "prophecy",
    "promise",
    "commission",
    "summons",
    "decree",
    "invocation",
    "tarrif"
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

-- link ("-link")

-- balm
-- potion
-- poultice

-- totem
-- sight
-- omen
-- shard
    }
end

function WordRepository:simplePP(word)
  local output = word
  if string.sub(output, -1) ~= "e" then
    output = output.."e"
  end
  return output.."d"
end

function WordRepository:doer(word)
  if word.doer then
    return word.doer
  end
  local output = word.name
  if string.sub(output, -1) == "y" then
    output = string.sub(output, 1, -#output-1).."i"
  end
  if string.sub(output, -1) ~= "e" then
    output = output.."e"
  end
  return output.."r"
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



-- abominable



-- abundance
-- abundant


-- growth
-- mutation
-- affliction
-- might
-- memory
-- benefaction
-- bounty
-- omen
-- peace
-- dread
-- frenzy
-- savagery

-- draught (potion)
-- infusion


-- charm (n.)
-- antique
-- trophy
-- loom
-- book

-- cowl
-- veil

-- staff
-- wand
-- cane



-- progenitor
-- __ collector
-- herder
-- __herd
-- socialite
-- pugilist
-- caretaker
-- hunter/tress
-- woodcutter
-- bard
-- researcher
-- bootlegger
-- smuggler
-- duelist
-- court ___


-- chancellor

-- clan
-- court



-- fearie
-- dryad



-- novice
-- adept
-- master
-- accomplished




-- autumn/autimnal


-- lizard
-- mammoth
-- ape
-- aurochs
-- beetle
-- bee
-- hornet
-- wasp
-- boar
-- squirrel




-- black market
-- borderland
-- well
-- crossroads
-- grove
-- lagoon
-- catacomb
-- glade
-- creek

-- willow
-- bamboo
-- foliage
-- conifer


-- shell
-- bramble
-- dust



-- aggressive
-- natural
-- unnatural
-- ascetic
-- auspicious
-- cadaverous


-- -- desciptors by landscape
-- boreal
-- alpine
-- arboreal
-- arctic
-- timber


-- awaken
-- devastate
-- tend
-- rend
-- attune
-- bequeath
-- bind
-- birth
-- vex
-- blossom
-- enrage
-- cultivate
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
-- nurture
-- cherish
-- cling
-- cloak (pp v.)
-- commune
-- creep
-- cultivate
-- ignite
-- deny
-- usurp
-- taint

-- the___
-- wild
-- dead

-- --essence

-- -widow (spider)
-- were-

-- prowler
-- beast

-- (sprcific list for compound words?)
-- -barb
-- bitter-
-- -clad
-- -branch
-- -bond


-- -- way of naming religions / deities




