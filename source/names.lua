gNames = {}

gNames.randomHuman = {
  "George", "Judy", "Rania", "Samia", "Alphonse",
  "Carlos", "Stella", "Grace", "Sheldon", "Henrietta",

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
  --UNNATURAL NAMES:
  --Suele
  --Chaonuan - how ua is handled, not after N

  local initials = {"j","h","zh","z","x","sh","s","ch","ts","q","g","n","m","t","d","p","l","w","y"}
  local finals = {"ai","an","ang","ao","iao","i","ian","iang","ing","iu","u","ua","uan","uang","ung","ui","ou","ue","oung","e","ei","eng","en","eng","ong"}

  local nameString = ""
  local syllables = {"",""}

  for i = 1, 2 do
    syllables[i] = finals[math.random(#finals)]

    local noW = {"ao","iao", "ian","iang","iu","ua","uan","uang","ui","ou","oung"}
  
    if contains(noW, syllable1) then
      table.insert(initials, "w")
    end

    syllables[i] = initials[math.random(#initials)] .. syllables[i]
  
    local wIndex = getIndex(initials, "w")
    table.remove(initials, wIndex)

  end
  
  nameString = syllables[1] .. syllables[2]

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
    "s","es","y", -- french
    "sk", -- slavic
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

gNames.randomNahuatlPlace = function()
  local syllables = {
    "xo","xi","xa","xi","chi","o","a","hui","hua",
    "te","to","teo","ti","ca","co","me","mi",
    "po","zi","za"
  }
  local syllableEndings = {"t","x","c","z"}
  local suffixes = {
    "tlan","pan","milco","chalco","tepec","uca","tla","utla","aca","co","acan","lan"
  }
  local length = math.random(2,4)
  local nameString = ""

  for i = 1, length do
    nameString = nameString .. syllables[math.random(#syllables)]

    if i < length and math.random(2) > 1 then
      if math.random(2) > 1 then
        nameString = nameString .. syllableEndings[math.random(#syllableEndings)]
      end  
    end
  end

  if length < 3 and math.random(2) > 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  return capitalize(nameString)
end

gNames.randomGermanPlace = function()
  local initialConsonants = {"k","kr","l","g","gr","h","b","br","z","zw","st","sp","str","shw","sw","oh","on","m","n","w"}
  local vowels = {"o","eu","ei","i","a","au","oe"}
  local finalConsonants = {"g","s","ss","st","n","ln","nn","cht"}
  local suffixes = {"burg","berg","heim","wald"}

  local nameString = ""

  local length = math.random(2,3)

  for i = 1, length do
    local syllable = ""
    syllable = syllable .. 
      initialConsonants[math.random(#initialConsonants)] ..
      vowels[math.random(#vowels)]

    if math.random(2) > 1 then
      syllable = syllable .. finalConsonants[math.random(#finalConsonants)]
    end
    nameString = nameString .. syllable
  end

  if length < 3 and math.random(2) > 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  return capitalize(nameString)
end

gNames.randomEnglishPlace = function()
  local initialConsonants = {"l","m","n","t","th","sc","sh","ch","p","d","b","br","tr"}
  local vowels = {"o","e","a","i","igh","o","u","ugh","ea","ou","ough","oa","ear"}
  local finalConsonants = {"n","nt","th","r","p","s","st","rst","t","tt","tts"}
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
      initialConsonants[math.random(#initialConsonants)] ..
      vowels[math.random(#vowels)]

    if math.random(2) > 1 then
      syllable = syllable .. finalConsonants[math.random(#finalConsonants)]
      if math.random(2) > 1 then
        syllable = syllable .. "ing"
      end
    end
    nameString = nameString .. syllable
  end

  if length < 2 and math.random(2) > 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  return capitalize(nameString)
end

gNames.randomFrenchPlace = function()
  local initialConsonants = {"ch","d","f","fr","g","l","m","s","t","tr","p","pr","v"}
  local vowels = {"a","o","ou","u","i","ie"}
  local finalConsonants = {"n","r","rs","s","n","nt","vr","tr","pr","cr"}
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
        initial = initialConsonants[math.random(#initialConsonants)]
        syllable = syllable .. initial .. vowels[math.random(#vowels)]
      else
        local initialVowels = {"a","o","ou","u","i"}
        syllable = syllable .. initialVowels[math.random(#initialVowels)]
      end
    end

    if i < length or math.random(2) == 1 then
      syllable = syllable .. finalConsonants[math.random(#finalConsonants)]
    end
    nameString = nameString .. syllable
  end

  -- take last syllable (if "l",), double it and add "e"
  -- randomly add "r" or "t" to a consonant
  -- too many consecutive consonants

  if length == 1 or math.random(2) == 1 then
    local vowels = {"a","e","i","o","u"}
    if contains(vowels, string.sub(nameString, -1)) then
      nameString = nameString .. consonantSuffixes[math.random(#consonantSuffixes)]
    else
      nameString = nameString .. vowelSuffixes[math.random(#vowelSuffixes)]
    end
  end

  if string.sub(nameString, -1) == "r" then
    local final = {"s","tes","y"}
    nameString = nameString .. final[math.random(#final)]
  end

  -- if math.random(3) == 1 then
  --   prefix = prefixes[math.random(#prefixes)]
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
  local adjab = {"a","i","b","d","f","g","gh","h","j","k","kh","l","m","n","q","r","s","t","w","z"}
  local initialDiacritics = {"a","i","u"}
  local diacritics = {"a","i","u","double","circle", "hamza"}
  local suffixes = {"ah","iyyah"}
  local prefixes = {"al-"}


  local nameString = ""

  local syllables = {"",""}
  local length = math.random(2, 3)

  for i = 1, length do
    local syllable = adjab[math.random(#adjab)]
    local diacritic = ""
    if i == 1 then
      diacritic = initialDiacritics[math.random(#initialDiacritics)]
    else
      diacritic = diacritics[math.random(#diacritics)]
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
    local duplicateLetterIndex = getIndex(adjab, lastLetter)
    table.remove(adjab, duplicateLetterIndex)
    nameString = nameString .. adjab[math.random(#adjab)]
  end

  if math.random(3) == 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  if math.random(3) == 1 then
    nameString =  prefixes[math.random(#prefixes)] .. nameString
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
    local initial = initials[math.random(#initials)]
    local final = finals[math.random(#finals)]
    
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
    local syllable = consonants[math.random(#consonants)] ..
      vowels[math.random(#vowels)]
      nameString = nameString .. syllable
  end

  if math.random(2) == 1 then
    if math.random(2) == 1 then
      local length2 = math.random(2)
  
      for i = 1, length2 do
        local syllable2 = consonants[math.random(#consonants)] ..
          vowels[math.random(#vowels)]
          nameString = nameString .. ofs[math.random(#ofs)] .. syllable2
      end
    else
      nameString = prefixes[math.random(#prefixes)] .. nameString
    end
  end

  if math.random(3) == 1 then
    nameString = nameString .. suffixes[math.random(#suffixes)]
  end

  return capitalize(nameString)
end