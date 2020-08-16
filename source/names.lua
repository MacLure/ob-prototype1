gNames = {}

gNames.randomHuman = {
  "George", "Judy", "Rania", "Samia", "Alphonse",
  "Carlos", "Stella", "Grace", "Sheldon", "Harietta",

}

gNames.pickRandomHuman = function()
  local name = gNames.randomHuman[math.random(#gNames.randomHuman)]
  local nameIndex = getIndex(gNames.randomHuman, name)
  
  return name
end
  
gNames.vowels = {"a","e","i","o","u"}
gNames.consonants = {"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"}
gNames.punctuation = {"'","-"}
gNames.dipthongs = {}

gNames.randomJapanesePlace = function()
  local syllables = {
    "a","i","u","e","o",
    "ka","ki","ku","ke","ko",
    "sa","shi","su","se","so",
    "ta","chi","tsu","te","to",
    "na","ni","nu","ne","no",
    "ma","mi","mu","me","mo",
    "ya","yu","yo","wa",
    "ra","ri","ru","re","ro",
    "kya","kyu","kyo",
    -- "sha","shu","sho",
    "cha","chu","cho",
    -- "nya","nyu","nyo",
    -- "mya","myu","myo",
    -- "rya","n",
    "ryu","ryo"
  }

  local suffixes = {
    "kawa","gawa","sawa","zawa","saki","zaki","do",
    "hama","yama","machi","shima","jima","tani"
  }

  local length = math.random(2,4)
  local nameString = ""

  for i = 1, length do
    nameString = nameString .. syllables[math.random(#syllables)]
    if string.sub(nameString, -1) == "a" or string.sub(nameString, -1) == "e" then
      if math.random(3) > 2 then
        nameString = nameString .. "i"
      end
    end
  end

  if length < 3 and math.random(2) > 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  return capitalize(nameString)
end

gNames.randomChinesePlace = function()
  local initials = {"j","h","zh","z","x","sh","s","ch","c","q","g","n","m","t","d","p","l","w","y"}
  local finals = {"ai","an","ang","ao","iao","i","ian","iang","ing","iu","u","ua","uan","uang","ung","ui","ou","ue","oung","e","ei","eng","er","en","eng","ong"}

  local nameString = initials[math.random(#initials)] ..
    finals[math.random(#finals)] ..
    initials[math.random(#initials)] ..
    finals[math.random(#finals)]

  return capitalize(nameString)
end

gNames.randomIndianPlace = function()
  -- Needs Improving
  local suffixes = {"now","pur","uru","ore","abad","shwar","atnam","swar"}

  local nameString = ""

  if math.random(2) > 1 then
    nameString = nameString .. gNames.vowels[math.random(#gNames.vowels)]
  end

  nameString = nameString .. gNames.consonants[math.random(#gNames.consonants)]
  nameString = nameString .. gNames.consonants[math.random(#gNames.consonants)]
  nameString = nameString .. gNames.vowels[math.random(#gNames.vowels)]
  nameString = nameString .. gNames.consonants[math.random(#gNames.consonants)]

  if math.random(2) > 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end
  
  return capitalize(nameString)
end

gNames.randomGreekPlace = function()
  local vowels = {"a","e","i","o","u","ai","ae","eo","ea","ei","io","ia","ua","ui","uo"}
  local consonants = {"t","th","ts","tr","k","kr","kl","kt","m","n","ch","c","cr","s","st","sp","sk","sp","sth","x","p","pr","l","v","vr","r","rt","d","dr"}
  local suffixes = {
    "polis","os","poli","ia","a","i","ki","na","ka","ta", -- greek
    "now","pur","uru","ore","abad","shwar","atnam","swar", -- indian
    "etto","ino","onia","um","ium", -- italian
    "ford","shire","ton","borough","wich","mouth","ham","thorpe","bury", -- english
    "s","es","y", -- french
    "burg","berg", --german
    "sk", -- slavic
    "tlan","pan","milco","chalco","tepec","uca","tla","utla","aca"-- aztec

  }
  local length = math.random(1,2)
  local nameString = ""

  for i = 1, length do
    if math.random(2) > 1 then
      nameString = nameString .. vowels[math.random(#vowels)]
    end

    local consonant = consonants[math.random(#consonants)]

    if i > 1 and string.len(consonant) == 1 then
      consonant = consonant .. consonant
    end

    local syllable = consonant .. vowels[math.random(#vowels)]
    nameString = nameString .. syllable
  end
  
  if math.random(2) > 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  return capitalize(nameString)
end

-- gNames.randomInuitPlace = function()
--   local suffixes = "ik","uk","ut","at","aq"
-- end

gNames.randomKoreanPlace = function()
  local initials = {"g","n","d","r","m","b","s","j","ch","k","t","p","h"}
  local medials = {"a","ya","eo","yeo","o","yo","yu","yu","eu","i","yae"}
  local finals = {"k","ng","n","p","l","m"}

  local syllables = {"",""}

  for i = 1, 2 do
    local initial = initials[math.random(#initials)]

    if math.random(3) > 2 then
      initial = ""
    end
    
    local medial = medials[math.random(#medials)]
  
    local final = finals[math.random(#finals)]
    
    if math.random(3) > 2 then
      final = ""
    end

    syllables[i] = initial .. medial .. final
  end


  local nameString = syllables[1] .. syllables[2]

  return capitalize(nameString)
end