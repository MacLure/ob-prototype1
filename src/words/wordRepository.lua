WordRepository = Class{}

function WordRepository:new()
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
  ["black"] = { tags = {} },
  ["white"] = { tags = {} },
  ["grey"] = { tags = {} },
  ["red"] = { tags = {} },
  ["scarlet"] = { tags = {} },
  ["crimson"] = { tags = {} },
  ["blue"] = { tags = {} },
  ["yellow"] = { tags = {} },
  ["green"] = { tags = {} },
  ["golden"] = { tags = {} },
  ["silver"] = { tags = {} },
  ["vermillion"] = { tags = {} },
}

WordRepository.abstracts = {
  -- light
  ["grace"] = { tags = {}, adj="graceful" },
  ["light"] = { tags = {}, verb="light" },
  ["hope"] = { tags = {} },
  ["radiance"] = { tags = {}, adj="radiant" },
  ["retribution"] = { tags = {} },

  -- dark
  ["darkness"] = { tags = {}, adj="dark" },
  ["shadow"] = { tags = {}, adj="shadowy" },
  ["gloom"] = { tags = {}, adj="gloomy" },
  ["sorrow"] = { tags = {}, adj="sorrowful" },
  ["woe"] = { tags = {}, adj="woeful" },

  -- death
  ["death"] = { tags = {}, adj="dead" },

  -- decay
  ["rot"] = { tags = {}, adj="rotten" },
  ["decay"] = { tags = {}, verb="decay" },
  ["disease"] = { tags = {}, adj="diseased" },
  ["plague"] = { tags = {} },
  ["pox"] = { tags = {} },
  ["oblivion"] = { tags = {} },
  ["destitution"] = { tags = {}, adj="destitute" },
  ["ruin"] = { tags = {}, verb="ruin" },

  -- chaos
  ["dissolution"] = { tags = {} },
  ["strife"] = { tags = {} },
  ["disorder"] = { tags = {} },
  ["destruction"] = { tags = {}, verb="destroy" },
  ["discord"] = { tags = {} },
  ["mayhem"] = { tags = {} },
  ["calamity"] = { tags = {}, adj="calamitous" },
  ["drought"] = { tags = {} },

  -- order
  ["accord"] = { tags = {} },
  ["authority"] = { tags = {} },
  ["honour"] = { tags = {}, adj="honorable" },
  ["mercy"] = { tags = {}, adj="merciful" },
  ["justice"] = { tags = {}, adj="just" },
  ["heritage"] = { tags = {} },
  ["tradition"] = { tags = {} },
  ["preservation"] = { tags = {}, verb="preserve" },
  ["lore"] = { tags = {} },
  ["duty"] = { tags = {}, adj="dutiful" },

  -- savagery
  ["fear"] = { tags = {}, verb="fear" },
  ["terror"] = { tags = {} },
  ["agony"] = { tags = {} },
  ["servitude"] = { tags = {}, verb="serve" },
  ["imprisonment"] = { tags = {} },
  ["aggression"] = { tags = {} },
  ["wrath"] = { tags = {}, adj="wrathful" },
  ["cruelty"] = { tags = {}, adj="cruel" },
  ["spite"] = { tags = {}, adj="spiteful" },
  ["anguish"] = { tags = {} },
  ["perdition"] = { tags = {} },
  ["profanity"] = { tags = {}, adj="profane" },


  ["abomination"] = { tags = {}, adj="abominable" },
  ["rejuvination"] = { tags = {}, verb="rejuvinate" },
  ["restoration"] = { tags = {}, verb="restore" },
  ["tranquility"] = { tags = {}, adj = "tranquil" },
  ["serenity"] = { tags = {}, adj="serene" },
  ["splendor"] = { tags = {}, adj="splendid" },
  ["war"] = { tags = {}},
  ["battle"] = { tags = {} },
  ["mirage"] = { tags = {"desert"} },
  ["fate"] = { tags = {}, adj="fateful" },
  ["uprising"] = { tags = {} },
  ["revolt"] = { tags = {} },
  ["relic"] = { tags = {} },
  ["indignation"] = { tags = {}, adj="indignant" },


  ["growth"] = { tags = {} },
  ["mutation"] = { tags = {} },
  ["affliction"] = { tags = {} },
  ["might"] = { tags = {} },
  ["memory"] = { tags = {} },
  ["benefaction"] = { tags = {} },
  ["bounty"] = { tags = {} },
  ["omen"] = { tags = {} },
  ["peace"] = { tags = {} },
  ["dread"] = { tags = {} },
  ["frenzy"] = { tags = {} },
  ["destiny"] = { tags = {} },
  ["filth"] = { tags = {} },
  ["drudgery"] = { tags = {} },
  ["fury"] = { tags = {} },
  ["predation"] = { tags = {} },
  ["sorcery"] = { tags = {} },
  ["balance"] = { tags = {} },
  ["horror"] = { tags = {} },
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
  ["wine"] = { tags = {} },
  ["brass"] = { tags = {}, golem=true },
  ["chain"] = { tags = {} },
  ["fetter"] = { tags = {} },
  ["crop"] = { tags = {} },
  ["tax"] = { tags = {} },
  ["tithe"] = { tags = {} },
  ["alm"] = { tags = {} },
  ["livestock"] = { tags = {} },
  ["charm"] = { tags = {} },
  ["antique"] = { tags = {} },
  ["trophy"] = { tags = {} },
  ["loom"] = { tags = {} },
  ["book"] = { tags = {} },
  ["leather"] = { tags = {} },
  ["plunder"] = { tags = {} },
  ["needle"] = { tags = {} },
}

WordRepository.substances = {
  -- countable
  ["fern"] = { tags = {"forest","jungle"} },
  ["vine"] = { tags = {"jungle"} },
  ["tree"] = { tags = {"forest","jungle"} },
  ["root"] = { tags = {"forest","jungle"} },
  ["leaf"] = { tags = {"forest","jungle"} },
  ["briar"] = { tags = {"forest"} },
  ["thorn"] = { tags = {"forest"} },
  ["thistle"] = { tags = {"forest"} },
  ["pine"] = { tags = {"forest"} },
  ["oak"] = { tags = {"forest"} },
  ["cedar"] = { tags = {"forest"} },
  ["willow"] = { tags = {"forest"} },
  ["conifer"] = { tags = {"forest"} },
  ["nightshade"] = { tags = {"forest"} },
  ["pelt"] = { tags = {"forest"} },
  ["bough"] = { tags = {"forest"} },
  ["bramble"] = { tags = {"forest"} },
  ["branch"] = { tags = {"forest","jungle"} },
  ["spore"] = { tags = {"forest","jungle"} },
  ["sprout"] = { tags = {"forest","jungle"} },
  ["seed"] = { tags = {"forest","jungle","plains"} },
  ["seedling"] = { tags = {"forest","jungle"} },
  ["herb"] = { tags = {"plains"} },
  ["flower"] = { tags = {"plains"} },
  ["rose"] = { tags = {} },
  ["jasmine"] = { tags = {} },
  ["orchid"] = { tags = {} },
  ["juniper"] = { tags = {} },
  ["lotus"] = { tags = {} },
  ["laurel"] = { tags = {} },
  ["shell"] = { tags = {"sea"} },
  ["fossil"] = { tags = {} },

  ["fire"] = { tags = {"fire"} },
  ["ash"] = { tags = {"fire","death"}, golem=true},
  ["flame"] = { tags = {} },

  ["grave"] = { tags = {"death"} },
  ["tomb"] = { tags = {"death"} },
  ["crypt"] = { tags = {"death"} },
  ["gallow"] = { tags = {} },
  ["corpse"] = { tags = {} },

  ["tide"] = { tags = {"sea"} },
  ["wave"] = { tags = {"sea"} },
  ["pearl"] = { tags = {"sea"} },
  ["barnacle"] = { tags = {"sea", golem=true} },

  ["mangrove"] = { tags = {"swamp"} },
  ["reed"] = { tags = {"swamp"} },

  ["plume"] = { tags = {} },
  ["crystal"] = { tags = {} },

  -- uncountable
  ["grass"] = { tags = {"plains"} },
  ["dust"] = { tags = {} },
  ["fleece"] = { tags = {"plains"} },
  ["wheat"] = { tags = {"plains"} },
  ["barley"] = { tags = {"plains"} },

  ["bamboo"] = { tags = {"forest"} },
  ["kelp"] = { tags = {"sea"} },
  ["foliage"] = { tags = {"forest","jungle"} },
  ["bush"] = { tags = {"plains"} },
  ["ebony"] = { tags = {} },
  ["ivy"] = { tags = {"forest","jungle"} },
  ["moss"] = { tags = {"forest"}, golem=true},
  ["brush"] = { tags = {"forest","jungle"} },
  ["wood"] = { tags = {"forest","jungle"}, golem=true},
  ["timber"] = { tags = {"forest"} },
  ["sap"] = { tags = {"forest"} },
  ["dirt"] = { tags = {"plains"} },
  ["soil"] = { tags = {"forest","jungle","plains"} },
  ["salt"] = { tags = {} },
  ["ice"] = { tags = {"cold"}, golem=true},
  ["snow"] = { tags = {"cold"} },
  ["coral"] = { tags = {"sea"}, golem=true},
  ["driftwood"] = { tags = {"sea"}, golem=true},
  ["sand"] = { tags = {"desert"}, golem=true},
  ["stone"] = { tags = {}, golem=true},
  ["granite"] = { tags = {}, golem=true },
  ["marble"] = { tags = {}, golem=true },
  ["bronze"] = { tags = {}, golem=true },
  ["iron"] = { tags = {}, golem=true},
  ["opal"] = { tags = {} },
  ["jade"] = { tags = {}, golem=true},
  ["silver"] = { tags = {}, golem=true },
  ["gold"] = { tags = {}, golem=true},
  ["emerald"] = { tags = {} },
  ["ruby"] = { tags = {} },
  ["sapphire"] = { tags = {} },
  ["amethyst"] = { tags = {} },
  ["geode"] = { tags = {} },
  ["rust"] = { tags = {}, golem=true },
  ["clay"] = { tags = {}, golem=true},
  ["dung"] = { tags = {} },
  ["carrion"] = { tags = {}, golem=true },
  ["honey"] = { tags = {} },
  ["nectar"] = { tags = {} },
  ["poison"] = { tags = {} },
  ["venom"] = { tags = {} },
  ["ink"] = { tags = {"sea"} },
  ["ivory"] = { tags = {} },
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
  -- renowned
  -- abundant

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

  ["morbid"] = { tags = {} },
  ["noxious"] = { tags = {} },
  ["odious"] = { tags = {} },
  ["wicked"] = { tags = {} },
  ["bleak"] = { tags = {} },
  ["wretched"] = { tags = {} },
  ["loathsome"] = { tags = {verb="loathe"} },
  ["pestilent"] = { tags = {} },

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

  ["pitiless"] = { tags = {}, verb="pity", noun="pity" },
  ["discordant"] = { tags = {}, noun="discord" },
  ["aggressive"] = { tags = {}, noun="aggression" },
  ["natural"] = { tags = {}, noun="nature" },
  ["unnatural"] = { tags = {} },
  ["ascetic"] = { tags = {}, noun="asceticism" },
  ["auspicious"] = { tags = {} },
  ["cadaverous"] = { tags = {}, noun="cadaver" },
  ["defiant"] = { tags = {}, verb="defy", noun="defiance" },
  ["deranged"] = { tags = {} },
  ["diligent"] = { tags = {}, noun="diligence" },
  ["sacred"] = { tags = {} },
  ["eccentric"] = { tags = {}, noun="eccentricity" },
  ["etherial"] = { tags = {} },
  ["feral"] = { tags = {} },
  ["ferocious"] = { tags = {} },
  ["fertile"] = { tags = {}, noun="fertility" },
  ["fungal"] = { tags = {}, noun="fungus" },
  ["forbidden"] = { tags = {}, verb="forbid" },
  ["gluttonous"] = { tags = {} },
  ["grim"] = { tags = {} },
  ["weak"] = { tags = {}, noun="weakness" },
  ["indomitable"] = { tags = {}, verb="dominate" },
  ["boundless"] = { tags = {} },
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
  ["cowl"] = { tags = {} },
  ["rag"] = { tags = {} },
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
  ["staff"] = { tags = {} },
  ["wand"] = { tags = {} },
  ["cane"] = { tags = {} },
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
  ["vigilante"] = { tags = {} },
  ["hoodlum"] = { tags = {} },
  ["burglar"] = { tags = {} },
  ["slaver"] = { tags = {} },
  ["mercenary"] = { tags = {} },

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
  ["highwayman"] = { tags = {}, gender = "male" },
  ["highwaywoman"] = { tags = {}, gender = "female" },
  ["grave-robber"] = { tags = {} },
  ["scavenger"] = { tags = {} },
  ["fugitive"] = { tags = {} },
  ["bandit"] = { tags = {} },
  ["raider"] = { tags = {} },
  ["pirate"] = { tags = {} },
  ["poacher"] = { tags = {} },
  ["brigand"] = { tags = {} },
  ["marauder"] = { tags = {} },

  -- tied to s.t.
  ["ward"] = { tags = {} },
  ["warden"] = { tags = {} },
  ["patron"] = { tags = "male" },
  ["matron"] = { tags = "female" },
  ["patriarch"] = { tags = {}, gender = "male" },
  ["matriarch"] = { tags = {}, gender = "female" },
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
  ["crusader"] = { tags = {"faith"} },
  ["official"] = { tags = {} },
  ["steward"] = { tags = {} },
  ["deacon"] = { tags = {} },

  ["progenitor"] = { tags = {} },
  ["__ collector"] = { tags = {} },
  ["herder"] = { tags = {} },
  ["__herd"] = { tags = {} },
  ["socialite"] = { tags = {} },
  ["pugilist"] = { tags = {} },
  ["caretaker"] = { tags = {} },
  ["hunter"] = { tags = {}, gender="male" },
  ["huntress"] = { tags = {}, gender="female" },
  ["woodcutter"] = { tags = {} },
  ["bard"] = { tags = {} },
  ["bootlegger"] = { tags = {} },
  ["smuggler"] = { tags = {} },
  ["duelist"] = { tags = {} },
  ["court ___"] = { tags = {} },
  ["arch__"] = { tags = {} },
  ["__ leader"] = { tags = {} },
  ["fugitive"] = { tags = {} },
  ["sorceror"] = { tags = {} },
  ["supplicant"] = { tags = {} },
  ["ritualist"] = { tags = {} },
  ["artisan"] = { tags = {} },
  ["__ wrangler"] = { tags = {} },
  ["lich"] = { tags = {} },
  ["paladin"] = { tags = {} },
  ["forager"] = { tags = {} },
  ["archer"] = { tags = {} },
  ["chancellor"] = { tags = {} },
  ["hag"] = { tags = {} },
  ["dissident"] = { tags = {} },
  ["innkeeper"] = { tags = {} },
  ["handservant"] = { tags = {} },
  ["herder"] = { tags = {} },
}

WordRepository.titles = {
  ["hand"] = { tags = {} },
  ["lord"] = { tags = {}, gender = "male" },
  ["lady"] = { tags = {}, gender = "female" },
  ["prince"] = { tags = {}, gender = "male" },
  ["princess"] = { tags = {}, gender = "female" },
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
  ["witch"] = { tags = {"int"}, gender = "female" },
}

WordRepository.relations = {
  -- family
  ["brother"] = { tags = {}, gender = "male" },
  ["sister"] = { tags = {}, gender = "female" },
  ["father"] = { tags = {}, gender = "male" },
  ["mother"] = { tags = {}, gender = "female" },
  ["son"] = { tags = {}, gender = "male" },
  ["daughter"] = { tags = {}, gender = "female" },
  ["child"] = { tags = {}, gender = {} },
  ["consort"] = { tags = {} },
  ["husband"] = { tags = {}, gender = "male" },
  ["wife"] = { tags = {}, gender = "female" },
  ["bride"] = { tags = {},gender= "female" },
  ["groom"] = { tags = {}, gender = "male" },
  ["descendent"] = { tags = {} },
  ["retainer"] = { tags = {} },
  ["bodyguard"] = { tags = {} },
  ["kin"] = { tags = {} },
  ["orphan"] = { tags = {} },
  ["offspring"] = { tags = {} },
  ["scion"] = { tags = {} },
  ["priest"] = { tags = {} },

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
  ["loyalist"] = { tags = {} },

  -- antagonist
  ["scourge"] = { tags = {} },
  ["butcher"] = { tags = {} },
  ["stalker"] = { tags = {} },
}

WordRepository.socialGroups = {

  -- bond
  ["brotherhood"] = { tags = {}, gender = "male", member="brother" },
  ["sisterhood"] = { tags = {}, gender = "female", member="sister" },
  ["house"] = { tags = {} },
  ["clan"] = { tags = {} },
  ["tribe"] = { tags = {} },
  ["fellowship"] = { tags = {}, member="fellow" },
  ["company"] = { tags = {}, member="companion" },
  ["clan"] = { tags = {} },
  ["band"] = { tags = {} },
  ["covenant"] = { tags = {} },

  -- official
  ["priesthood"] = { tags = {}, member="priest" },
  ["militia"] = { tags = {} },
  ["guild"] = { tags = {} },
  ["conclave"] = { tags = {} },
  ["clergy"] = { tags = {} },
  ["infantry"] = { tags = {} },
  ["__watch"] = { tags = {} },
  ["patrol"] = { tags = {} },
  ["battalion"] = { tags = {} },
  ["court"] = { tags = {} },
  ["entourage"] = { tags = {} },

  -- interest
  ["order"] = { tags = {} },
  ["circle"] = { tags = {} },
  ["horde"] = { tags = {} },
  ["cult"] = { tags = {} },
  ["faithful"] = { tags = {} },
  ["uprising"] = { tags = {} },
    -- __folk

  -- non-human
  -- swarm
}

WordRepository.verbs = {
  -- tie nouns in other lists to verbs
  -- remove non-exception pp and doer, and make a function to auto-generate regular
  -- active
  ["slay"] = { pp = "slain", tags={} },
  ["burn"] = { pp = "burnt", tags={} },
  ["defile"] = { tags={}, noun="defilement" },
  ["tame"] = { tags={} },
  ["trap"] = { pp = "trapped", doer = "trapper", tags={}, noun="trap" },
  ["drown"] = { tags={"sea, river"} },
  ["conquer"] = { doer = "conqueror", noun="conquest", tags={} },
  ["crush"] = { tags={} },
  ["strike"] = { pp = "struck", tags={} },
  ["gaze"] = { tags={}, noun="gaze" },
  ["watch"] = { tags={} },
  ["bring"] = { pp = "brought", tags={} },
  ["drink"] = { pp = "drunk", noun="drink", tags={} },
  ["keep"] = { pp = "kept",  tags={} },
  ["defend"] = { noun="defense", tags={} },
  ["protect"] = { doer = "protector", noun="protection", tags={} },
  ["scorn"] = { noun="scorn", tags={} },
  ["exile"] = { noun="exile", tags={} },
  ["abolish"] = { tags={} },
  ["charm"] = { noun="charm", tags={} },
  ["enforce"] = { tags={} },
  ["purify"] = { noun="purity", tags={} },
  ["weave"] = { tags={} },
  ["breathe"] = { noun="breath", tags={} },
  ["mourn"] = { tags={} },
  ["devastate"] = { noun="devastation", doer = "devastator", tags={} },
  ["subdue"] = { tags={} },
  ["mend"] = { tags={} },
  ["hunt"] = { noun="hunt", tags={} },
  ["assail"] = { doer = "assailant", tags={} },
  ["defy"] = { noun="defiance", tags={} },
  ["eat"] = { pp = "eaten", tags={} },
  ["germinate"] = { tags={}, doer="germinator", noun="germination" },
  ["molt"] = { tags={} },
  ["liberate"] = { tags={}, doer="liberator", noun="liberation" },
  ["ruin"] = { tags={}, noun="ruin" },
  ["till"] = { tags={} },
  ["claim"] = { tags={}, doer="claimant", noun="claim" },
  -- ["tire"] = { tags={} },
  ["betray"] = { pp = "betrayed", tags={}, noun="betrayal" },
  ["greet"] = { tags={}, noun="greeting" },

  -- both
  ["seek"] = { pp = "sought", tags={} },
  ["speak"] = { pp = "spoken", tags={} },
  ["deliver"] = { noun="deliverance", tags={} },
  ["forge"] = { noun="forge", tags={} },
  ["bury"] = { noun="burial", tags={} },
  ["embrace"] = { noun="embrace", tags={} },
  ["shun"] = { pp = "shunned", doer = "shunner", tags={} },
  ["absolve"] = { noun="absolution", tags={} },
  ["enchant"] = { noun="enchantment", tags={} },
  ["conjur"] = { noun="conjuration", tags={} },
  ["summon"] = { tags={} },
  ["renew"] = { noun="renewal", tags={} },
  ["exalt"] = { noun="exaltation",  tags={} },
  ["favour"] = { noun="favour", tags={} },
  ["anoint"] = { tags={} },
  ["banish"] = { noun="banishment", tags={} },
  ["punish"] = { noun="punishment", tags={} },
  ["light"] = { noun="light", tags={} },
  ["bestow"] = { tags={} },
  ["preserve"] = { noun="preservation", tags={} },
  ["ensnare"] = { noun="snare", tags={} },
  ["deceive"] = { noun="deception", tags={} },
  ["possess"] = { noun="possession", doer = "possessor", tags={} },
  ["take"] = { pp = "taken", tags={} },
  ["corrupt"] = { doer = "corruptor", noun="corruption", tags={} },
  ["excommunicate"] = { doer = "excommunicator", noun="excommunication", tags={} },
  ["purge"] = { tags={} },
  ["cleanse"] = { tags={} },
  ["consecrate"] = { doer = "consecrator", noun="consecration", tags={} },
  ["infest"] = { tags={}, noun="infestation" },
  ["inflict"] = { tags={}, noun="infliction" },
  ["corrupt"] = { tags={}, doer="corruptor", noun="corruption" },
  ["contaminate"] = { tags={}, doer="contaminator", noun="contamination" },
  ["desecrate"] = { tags={}, doer="desecrator", noun="desecration" },
  ["torment"] = { tags={}, doer="tormentor", noun="torment" },

  -- passive
  ["see"] = { pp = "seen", tags={} },
  ["soak"] = { tags={} },
  ["bless"] = { noun="blessing", tags={} },
  ["curse"] = { noun="curse", tags={} },
  ["ascend"] = { noun="ascension", tags={} },
  ["guide"] = { doer = "guide", tags={} },
  ["adorn"] = { noun="adornment", tags={} },
  ["condemn"] = { noun="condemnation", tags={} },
  ["redeem"] = { noun="redemption", tags={} },
  ["nurture"] = { tags={} },
  ["atone"] = { noun="atonement", tags={} },
  ["pierce"] = { tags={} },
  ["inspire"] = { noun="inspiration", tags={} },
  ["forbid"] = { pp = "forbidden", doer = "forbidder", tags={} },
  ["kindle"] = { tags={} },
  ["entangle"] = { tags={} },
  ["devour"] = { tags={} },
  ["grip"] = { pp = "gripped", tags={}, noun="grip" },
  ["hate"] = { tags={}, noun="hatred" },
  ["loathe"] = { tags={}, noun="loathing" },
  ["pity"] = { tags={}, noun="pity" },

  -- other
  ["yield"] = { tags={} },
  ["despair"] = { noun="despair", tags={} },
  ["blossom"] = { noun="blossom", tags={} },
  ["endure"] = { noun="endurance", tags={} },
  ["expose"] = { tags={}, noun="exposure" },

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
-- desecrate
-- rampage
-- mangle
-- dwell
-- hex
-- claim, reclaim
-- enlist
-- enshrine
-- entangle
-- witness
-- mourn
-- invoke
-- fester
-- fracture
-- forbid
-- nourish
-- gild
-- crawl
-- shriek
-- gnaw
-- germinate
-- gorge
-- till
-- rampage
-- flay
-- heal
-- infest
-- dream
-- intrepid
-- beckon
-- bite
-- prowl
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

  ["shore"] = { tags = {} },
  ["path"] = { tags = {} },
  ["highway"] = { tags = {} },
  ["bridge"] = { tags = {} },
  ["thicket"] = { tags = {} },
  ["trail"] = { tags = {} },
  ["undergrowth"] = { tags = {} },
  ["murk"] = { tags = {} },
  ["lowlands"] = { tags = {} },
  ["reef"] = { tags = {} },
  ["basin"] = { tags = {} },
  -- [name] way

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

  ["highlands"] = { tags = {} },
  ["borderland"] = { tags = {} },
  ["grove"] = { tags = {} },
  ["lagoon"] = { tags = {} },
  ["glade"] = { tags = {} },
  ["creek"] = { tags = {} },
  ["volcano"] = { tags = {} },
  ["spring"] = { tags = {} },
  ["hotspring"] = { tags = {} },
    -- summit

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
  ["nightfall"] = { tags = {"cold"} },
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
  ["monsoon"] = { tags = {} },

  -- surface
  ["frost"] = { tags = {"cold"} },
  ["dew"] = { tags = {} },

  -- time
  ["winter"] = { tags = {"cold"} },
  ["autumn"] = { tags = {"cold"} },
  ["midsummer"] = { tags = {"cold"} },
  ["midwinter"] = { tags = {"cold"} },
}

WordRepository.animals = {
  -- size
  -- dangerousness
  -- foodchain?

  -- cats
  ["lion"] = { tags = {"plains"}, attributes={"mane","claw","tooth","paw"}, group="pride", fmale="lioness" },
  ["panther"] = { tags = {"jungle"}, attributes={"tooth","claw","paw"} },
  ["jaguar"] = { tags = {"jungle"}, attributes={"tooth","claw","paw"} },
  ["tiger"] = { tags = {"jungle"}, attributes={"claw","tooth","paw"}, female="tigress" },
  ["lynx"] = { tags = {}, attributes={} },

  -- snakes
  ["snake"] = { tags = {}, attributes={"fang","tongue"} },
  ["serpent"] = { tags = {}, attributes={"fang","tongue"} },
  ["asp"] = { tags = {}, attributes={} },
  ["cobra"] = { tags = {}, attributes={"hood"} },
  ["viper"] = { tags = {}, attributes={"fang"} },

  -- dogs
  ["hound"] = { tags = {}, attributes={"tooth"}, group="pack" },
  ["wolf"] = { tags = {"forest"}, attributes={"claw","fang","paw"}, group="pack" },
  ["fox"] = { tags = {"forest"}, attributes={"tail"} },
  ["jackal"] = { tags = {"desert"}, attributes={} },

  -- insects
  ["spider"] = { tags = {}, attributes={"web"}, group="brood" },
  ["scorpion"] = { tags = {"desert"}, attributes={"claw"} },
  ["maggot"] = { tags = {}, attributes={} },
  ["beetle"] = { tags = {}, attributes={} },
  ["bee"] = { tags = {}, attributes={} },
  ["hornet"] = { tags = {}, attributes={} },
  ["wasp"] = { tags = {}, attributes={} },
  ["scarab"] = { tags = {"desert"}, attributes={} },

  -- birds
  ["hawk"] = { tags = {}, attributes={"talon","feather"} },
  ["falcon"] = { tags = {}, attributes={"feather"} },
  ["eagle"] = { tags = {}, attributes={"feather"} },
  ["sparrow"] = { tags = {}, attributes={"feather"} },
  ["raven"] = { tags = {"cold"}, attributes={"feather"} },
  ["crow"] = { tags = {}, attributes={"feather"} },
  ["osprey"] = { tags = {}, attributes={"feather"} },
  ["vulture"] = { tags = {"desert"}, attributes={"talon"} },
  ["owl"] = { tags = {"forest"}, attributes={} },
  ["loon"] = { tags = {}, attributes={"feather"} },
  ["songbird"] = { tags = {}, attributes={"feather"} },
  ["crane"] = { tags = {}, attributes={"feather"} },
  ["peacock"] = { tags = {}, attributes={"feather"} },

  -- mythical
  ["wyrm"] = { tags = {}, attributes={} },
  ["gryphon"] = { tags = {"desert", "mountain"}, attributes={} },
  ["rukh"] = { tags = {}, attributes={"feather"} },
  ["kirin"] = { tags = {}, attributes={} },
  ["drake"] = { tags = {}, attributes={} },
  ["wyvern"] = { tags = {}, attributes={} },

  -- sea
  ["shark"] = { tags = {"sea"}, attributes={"fin","tooth"} },
  ["fish"] = { tags = {"sea, river"}, attributes={}, group="school" },
  ["squid"] = { tags = {"sea"}, attributes={"beak"} },
  ["octopus"] = { tags = {"sea"}, attributes={"tentacle"} },
  ["crab"] = { tags = {"sea"}, attributes={"claw"} },
  ["lobster"] = { tags = {"sea"}, attributes={"claw"} },
  ["barricuda"] = { tags = {"sea"}, attributes={"tooth"} },
  ["whale"] = { tags = {"sea"}, attributes={} },

  -- reptiles
  ["crocodile"] = { tags = {"river"}, attributes={"tooth"} },
  ["lizard"] = { tags = {"jungle"}, attributes={} },
  ["frog"] = { tags = {}, attributes={} },
  ["toad"] = { tags = {}, attributes={} },
  ["turtle"] = { tags = {}, attributes={} },
  ["tortoise"] = { tags = {}, attributes={} },

  ["ox"] = { tags = {"plains"}, attributes={"horn"} },
  ["bull"] = { tags = {"plains"}, attributes={} },
  ["stag"] = { tags = {"forest"}, attributes={"antler"} },
  ["antelope"] = { tags = {"plains"}, attributes={"horn"} },
  ["elk"] = { tags = {"forest"}, attributes={"antler"} },
  ["lamb"] = { tags = {"plains"}, attributes={} },
  ["camel"] = { tags = {"desert"}, attributes={} },
  ["giant ___"] = { tags = {}, attributes={} },
  ["mammoth"] = { tags = {}, attributes={} },
  ["aurochs"] = { tags = {}, attributes={} },
  ["boar"] = { tags = {}, attributes={} },
  ["squirrel"] = { tags = {}, attributes={} },
  ["sheep"] = { tags = {}, attributes={} },
  ["bear"] = { tags = {"forest"}, attributes={"claw"} },
  ["slug"] = { tags = {}, attributes={} },
  ["leech"] = { tags = {}, attributes={} },
  ["rat"] = { tags = {}, attributes={} },
  ["hyena"] = { tags = {"plains"}, attributes={} },
  ["ape"] = { tags = {"jungle"}, attributes={} },

-- dire-wolf
-- emperor-
-- great-
}

WordRepository.settlementDescriptions = {
  -- describe landscape
  ["boreal"] = { tags = {"city"} },
  ["autumnal"] = { tags = {"city"} },
  ["verdant"] = { tags = {"city"} },

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

  -- blight(ed)
}

WordRepository.settlements = {
    --   1: small village
    ["village"] = { tags = {} },
    ["hamlet"] = { tags = {} },
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
    -- ["black market"] = { tags = {} },
    -- ["well"] = { tags = {} },
    -- ["crossroads"] = { tags = {} },
    -- ["catacombs"] = { tags = {} },
    -- sewers
    -- street
    -- archives
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
  ["orchard"] = { tags = {} },
  ["mill"] = { tags = {} },
  ["excavation"] = { tags = {} },
  ["mine"] = { tags = {} },
  ["quarry"] = { tags = {} },
  ["forge"] = { tags = {} },
  ["caravan"] = { tags = {} },
  ["cache"] = { tags = {} },
  ["vault"] = { tags = {} },
  -- --   5: estate
  ["vinyard"] = { tags = {} },
  ["hatchery"] = { tags = {} },
  ["estate"] = { tags = {} },

  -- --   10: palace
  ["manor"] = { tags = {} },
  ["palace"] = { tags = {} },


  -- -- dwelling
  -- --  1: 
  -- --  5:
  -- --  10: 

  ["university"] = { tags = {} },
  ["academy"] = { tags = {} },
  ["library"] = { tags = {} },

  ["chapel"] = { tags = {} },
  ["church"] = { tags = {} },
  ["basilica"] = { tags = {} },

  ["temple"] = { tags = {} },
  ["shrine"] = { tags = {} },
  ["sanctuary"] = { tags = {} },

  ["monestary"] = { tags = {} },
  ["abbey"] = { tags = {} },
  
  ["tomb"] = { tags = {} },
  ["boneyard"] = { tags = {} },
  ["charnal ground"] = { tags = {} },

  ["promenade"] = { tags = {} },
  ["fairgrounds"] = { tags = {} },
  ["monument"] = { tags = {} },
  ["bridge"] = { tags = {"river"} },
  ["tower"] = { tags = {} },
  ["dungeon"] = { tags = {} },
  ["ruins"] = { tags = {} },

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
  -- altar (building characteristic)
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

function WordRepository:pastParticiple(verb)
  if verb.pp then
    return verb.pp
  end

  local output = verb.name
  if string.sub(output, -1) == "y" then
    return string.sub(output, 1, -1).."ied"
  elseif string.sub(output, -1) == "e" then
    return output.."d"
  else
    return output.."ed"
  end
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







-- domain

-- animal desciptors by landscape
-- boreal
-- alpine
-- arboreal
-- arctic
-- timber
-- autumn/autimnal












-- charnel
-- overgrown

-- depravity
-- affliction
-- abundance

-- blight

-- scar (attribute)
-- mark
-- sigil

-- _brew
-- draught (potion)
-- infusion

-- novice
-- adept
-- master
-- accomplished

-- -widow (spider)
-- were-
-- prowler
-- beast
-- scarecrow
-- vermin
-- fearie
-- dryad
-- ghoul
-- familiar
-- spectral __
-- ghost __
-- phantom __
-- spirit ___
-- wraith___

-- (sprcific list for compound words?)
-- -barb
-- bitter-
-- -clad
-- -branch
-- -bond
-- __'s path
-- doom---
-- brood--(mother, lord)
-- dueling grounds
-- -blast
-- earth-
-- -shaker
-- war-
-- -bark
-- under-
-- over-
-- far-
-- -regent
-- glimmer-
-- -stone
-- rot-(animal)
-- sundew
-- moondew
-- grave ___
-- grave__ _animal
-- all-__ing
-- __chant
-- gutter __
-- -kin
-- lifeforce
-- -dweller
-- lone __
-- masked, __masked
-- spawn of, __spawn
-- -born, born of -
-- chill
-- --pact
-- --rite
-- the___
-- wild
-- dead
-- --essence
-- sacred __animal
-- __ instinct
-- 's vessel
-- fallen
-- _ of unrest
-- nature (of nature, nature's__, ...)

-- accursed (human adj)

-- writhing

-- way of naming religions / deities
-- adjectives for classes:
-- druidic clerical knightly,...
