gNames = {}

gNames.randomHuman = {
  "George", "Judy", "Rania", "Samia", "Alphonse",
  "Carlos", "Stella", "Grace", "Sheldon", "Henrietta",

}

gNames.pickRandomHuman = function()
  local name = random(gNames.randomHuman)
  local nameIndex = getIndex(gNames.randomHuman, name)
  
  return name
end
  
gNames.vowels = {"a","e","i","o","u"}
gNames.consonants = {"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"}
gNames.punctuation = {"'","-"}
gNames.dipthongs = {}

gNames.randomJapanesePlace = function()
  --UNNATURAL NAMES:
  --Kutaiyucha
  --Nimechiu ('iu')
  --Nuteine, Meiritene ("ne")
  --Chameakyu
  --Sewaa, Churoo, Noohama,Ryukesuu (no double-vowels)
  local syllables = {
    "a","i","u","e","o",
    "ka","ki","ku","ke","ko",
    "sa","shi","su","se","so",
    "ta","chi","tsu","te","to",
    "na","ni","nu","ne","no",
    "ma","mi","mu","me","mo",
    "ya","yu","yo","wa",
    "ra","ri","ru","re","ro",
    "kyu","kyo",
    -- "kya","sha","shu","sho",
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
    nameString = nameString .. random(syllables)
    if string.sub(nameString, -1) == "a" or string.sub(nameString, -1) == "e" then
      if math.random(3) > 2 then
        nameString = nameString .. "i"
      end
    end
  end

  if length < 3 and math.random(2) > 1 then
    nameString = nameString .. random(suffixes)
  end

  return capitalize(nameString)
end

gNames.randomChinesePlace = function()
  --UNNATURAL NAMES:
  --Suele
  --Chaonuan - how ua is handled, not after N

  local initials = {"j","h","zh","z","x","sh","s","ch","ts","q","g","n","m","t","d","p","l","w","y"}
  local finals = {"ai","an","ang","ao","iao","i","ian","iang","ing","iu","u","ua","uan","uang","ung","ui","ou","ue","oung","e","ei","eng","en","eng","ong"}

  local nameString = ""
  local syllables = {"",""}

  for i = 1, 2 do
    syllables[i] = random(finals)

    local noW = {"ao","iao", "ian","iang","iu","ua","uan","uang","ui","ou","oung"}
  
    if contains(noW, syllable1) then
      removeByValue(initials, "w")
      syllables[i] = random(initials) .. syllables[i]
      table.insert(initials, "w")
    else
      syllables[i] = random(initials) ..syllables[i]
    end
  end
  
  nameString = syllables[1] .. syllables[2]

  return capitalize(nameString)
end

-- gNames.randomIndianPlace = function()
--   -- Needs Improving
--   local suffixes = {"now","pur","uru","ore","abad","shwar","atnam","swar"}

--   local nameString = ""

--   if math.random(2) > 1 then
--     nameString = nameString .. random(gNames.vowels)
--   end

--   nameString = nameString .. random(gNames.consonants)
--   nameString = nameString .. random(gNames.consonants)
--   nameString = nameString .. random(gNames.vowels)
--   nameString = nameString .. random(gNames.consonants)

--   if math.random(2) > 1 then
--     nameString = nameString .. random(suffixes)
--   end
  
--   return capitalize(nameString)
-- end

gNames.randomGreekPlace = function()
  local vowels = {"a","e","i","o","u","ai","ae","eo","ea","ei","io","ia","ua","ui","uo"}
  local consonants = {"t","th","ts","tr","k","kr","kl","kt","m","n","ch","c","cr","s","st","sp","sk","sp","sth","x","p","pr","l","v","vr","r","rt","d","dr"}
  local suffixes = {
    "polis","os","ios","poli","ia","a","i","ki","na","ka","ta", -- greek
    "etto","ino","onia","um","ium", -- italian
  }

  local length = math.random(1,2)
  local nameString = ""

  for i = 1, length do
    if math.random(2) > 1 then
      nameString = nameString .. random(vowels)
    end

    local consonant = random(consonants)

    if i > 1 and string.len(consonant) == 1 then
      consonant = consonant .. consonant
    end

    local syllable = consonant .. random(vowels)
    nameString = nameString .. syllable
  end
  
  if math.random(2) > 1 then
    nameString = nameString .. random(suffixes)
  end

  return capitalize(nameString)
end

gNames.randomNahuatlPlace = function()
  local syllables = {
    "xo","xi","xa","xi","chi","o","a","hui","hua","la",
    "te","to","teo","ti","tla","tu","ca","co","me","mi",
    "po","zi","za"
  }
  local syllableEndings = {"t","x","c","z"}
  local suffixes = {
    "tlan","pan","milco","chalco","tepec","uca","tla","utla","aca","co","acan","lan"
  }
  local length = math.random(2,4)
  local nameString = ""

  for i = 1, length do
    nameString = nameString .. random(syllables)

    if i < length and math.random(2) > 1 then
      if math.random(2) > 1 then
        nameString = nameString .. random(syllableEndings)
      end  
    end
  end

  if length < 3 and math.random(2) > 1 then
    nameString = nameString .. random(suffixes)
  end

  return capitalize(nameString)
end

gNames.randomGermanPlace = function()
  local initialConsonants = {"k","kr","l","g","gr","h","b","br","z","zw","st","sp","str","shw","sw","oh","on","m","n","w"}
  local vowels = {"o","eu","ei","i","a","u","au","oe"}
  local finalConsonants = {"g","s","ss","st","n","ln","nn","ch","cht"}
  local suffixes = {"burg","berg","heim","wald"}

  local nameString = ""

  local length = math.random(2,3)

  for i = 1, length do
    local syllable = ""
    syllable = syllable .. 
      random(initialConsonants) .. random(vowels)

    if math.random(2) > 1 then
      syllable = syllable .. random(finalConsonants)
    end
    nameString = nameString .. syllable
  end

  if length < 3 and math.random(2) > 1 then
    nameString = nameString .. random(suffixes)
  end

  return capitalize(nameString)
end

gNames.randomEnglishPlace = function()
  local initialConsonants = {"l","m","n","t","th","sc","sh","ch","p","d","b","br","tr"}
  local vowels = {"o","e","a","i","igh","o","u","ugh","ea","ou","ough","oa","ear"}
  local finalConsonants = {"n","nt","th","r","p","s","st","rst","t","tt","tts"}
  local componentAppends = {"ing","ster"}
  local suffixes = {
    "ford","shire","ton","sborough","wich",
    "mouth","ham","thorpe","bury","hurst","hearst",
    "ville","bridge","wood","thwait"
  }


  local nameString = ""

  local length = math.random(1,2)

  for i = 1, length do
    local syllable = ""
    syllable = syllable .. 
      random(initialConsonants) .. random(vowels)

    if math.random(2) > 1 then
      syllable = syllable .. random(finalConsonants)
      if math.random(2) > 1 then
        syllable = syllable .. random(componentAppends)
      end
    end
    nameString = nameString .. syllable
  end

  if length < 2 and math.random(2) > 1 then
    nameString = nameString .. random(suffixes)
  end

  return capitalize(nameString)
end

gNames.randomFrenchPlace = function()
  local initialConsonants = {"ch","d","f","fr","g","l","m","s","t","tr","p","pr","v"}
  local vowels = {"a","o","ou","u","i","ie"}
  local finalConsonants = {"n","r","rs","s","n","nt","vr","tr","pr","cr","gn"}
  -- local prefixes = {"saint-","mont"}
  local vowelSuffixes = {
    "y","e","es","eau","eaux","eille","eilles",
    "ien","ienne","iennes","on","ac",
  }
  local consonantSuffixes = {
    "s","chy","ry","lly","gne","gnon","tes","te"
  }

  local nameString = ""

  local length = math.random(1,2)

  for i = 1, length do
    local syllable = ""
    local initial = ""

    if i == i then
      if math.random(2) == 1 then
        initial = random(initialConsonants)
        syllable = syllable .. initial .. random(vowels)
      else
        local initialVowels = {"a","o","ou","u","i"}
        syllable = syllable .. random(initialVowels)
      end
    end

    if i < length or math.random(2) == 1 then
      syllable = syllable .. random(finalConsonants)
    end
    nameString = nameString .. syllable
  end

  -- take last syllable (if "l",), double it and add "e"
  -- randomly add "r" or "t" to a consonant
  -- too many consecutive consonants

  if length == 1 or math.random(2) == 1 then
    local vowels = {"a","e","i","o","u"}
    if contains(vowels, string.sub(nameString, -1)) then
      nameString = nameString .. random(consonantSuffixes)
    else
      nameString = nameString .. random(vowelSuffixes)
    end
  end

  if string.sub(nameString, -1) == "r" then
    local final = {"s","tes","y"}
    nameString = nameString .. random(final)
  end

  -- if math.random(3) == 1 then
  --   prefix = random(prefixes)
  --   if string.sub(prefix, -1) == "-" then
  --     nameString = capitalize(nameString)
  --   end
  --   nameString = prefix .. nameString
  -- end

  return capitalize(nameString)
end

gNames.randomArabicPlace = function()
  -- UNNATURAL NAMES
  --Fitunnm
  --Bikkj
  --Al-ra'aaat, Wadi-iiiisz : too many consecutive same vowels
  -- ending on "jk"
  local adjab = {"a","i","b","d","dh","f","g","gh","h","j","k","kh","l","m","n","q","r","s","sh","t","w","z"}
  local initialDiacritics = {"a","i","u"}
  local diacritics = {"a","i","u","double","circle", "hamza"}
  local suffixes = {"ah","iyyah"}
  local prefixes = {"al-"}

  local nameString = ""

  local syllables = {"",""}
  local length = math.random(2, 3)

  for i = 1, length do
    local syllable = random(adjab)
    local diacritic = ""
    if i == 1 then
      diacritic = random(initialDiacritics)
    else
      diacritic = random(diacritics)
    end
    if diacritic == "a" then
      if syllable == "u" then
        syllable = "wa"
      elseif syllable == "i" then
        syllable = "wi"
      end
      syllables[i] = syllable .. diacritic
    elseif diacritic == "i" then
      if syllable == "a" then
        syllable = "ay"
      end
      syllables[i] = syllable .. diacritic
    elseif diacritic == "u" then
      if syllable == "a" then
        syllable = "aw"
      elseif syllable == "i" then
        syllable = "iw"
      end
      syllables[i] = syllable .. diacritic
    elseif diacritic == "double" then
      if string.len(syllable) > 1 then
        syllables[i] = syllable
      else
        syllables[i] = syllable .. syllable
      end
    elseif diacritic == "circle" then
      syllables[i] = syllable
    elseif diacritic == "hamza" then
      if syllable == "a" then
        syllable = "'a"
      elseif syllable == "i" then
        syllable = "'i"
      end
      syllables[i] = syllable
    end

    nameString = nameString .. syllables[i]
  end

  if math.random(2) > 1 then
    local lastLetter = string.sub(nameString, -1)

    removeByValue(adjab, lastLetter)
    nameString = nameString .. random(adjab)
  end

  if math.random(3) == 1 then
    nameString = nameString .. random(suffixes)
  end

  if math.random(3) == 1 then
    nameString = "al-" .. nameString
  end

  return capitalize(nameString)
end

gNames.randomKoreanPlace = function()
  local initials = {
    "ga","gya","geo","gyeo","go","gyo","gyu","geu","gi","gae",
    "na","nya","neo","nyeo","no","nyo","nyu","neu","ni","nae",
    "da","dya","deo","dyeo","do","dyo","dyu","deu","di","dae",
    "ra","rya","reo","ryeo","ro","ryo","ryu","reu","ri","rae",
    "ma","mya","meo","myeo","mo","myo","myu","meu","mi","mae",
    "ba","bya","beo","byeo","bo","byo","byu","beu","bi","bae",
    "sa","sya","seo","syeo","so","syo","syu","seu","si","sae",
    "a","i","o","u",
    "ya","yeo","yo","yu","yeu","yi","yae",
    "ja","jeo","jo","ju","jeu","ji","jae",
    "cha","cheo","cho","chu","cheu","chi","chae",
    "ta","teo","to","teu","ti","tae",
    "ka","kya","keo","kyeo","ko","kyo","kyu","keu","ki","kae",
    "pa","pya","peo","pyeo","po","pyo","pyu","peu","pi","pae",
    "ha","hya","heo","hyeo","ho","hyo","hyu","heu","hi","hae",
  }
  local finals = {"k","ng","n","p","l","m"}
  
  local syllables = {"",""}

  for i = 1, 2 do
    local initial = random(initials)
    local final = random(finals)
    
    if math.random(3) == 1 then
      final = ""
    end

    syllables[i] = initial .. final
  end

  local nameString = syllables[1] .. syllables[2]

  return capitalize(nameString)
end

gNames.randomBrazilianPlace = function()
  -- OFs occuring multiple times in a single name
  -- too many short syllables, especially with "do.de"
  local prefixes = {"sao ","santa "}
  local consonants = {"b","c","d","j","l","m","p"}
  local vowels = {"oa","ao","a","e","i","o","oe"}
  local suffixes = {"nha","nhao","lhao","lha","cao","sso","oso","hia","oas","aria","ania","minhas","eiro","eira","as"}
  local ofs = {" do ", " de "}

  local nameString = ""

  length = math.random(2)

  for i = 1, length do
    local syllable = random(consonants) .. random(vowels)
      nameString = nameString .. syllable
  end

  if math.random(2) == 1 then
    if math.random(2) == 1 then
      local length2 = math.random(2)
  
      for i = 1, length2 do
        local syllable2 = random(consonants) .. random(vowels)
          nameString = nameString .. random(ofs) .. syllable2
      end
    else
      nameString = random(prefixes) .. nameString
    end
  end

  if math.random(3) == 1 then
    nameString = nameString .. random(suffixes)
  end

  return capitalize(nameString)
end