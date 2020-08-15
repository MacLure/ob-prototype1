gHumanNames = {
  "George", "Judy", "Rania", "Samia", "Alphonse"
}

gPlaceNames = {
  "George", "Judy", "Rania", "Samia", "Alphonse"
}


vowels = {"a","e","i","o","u"}
consonants = {"b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"}
punctuation = {"'","-"}
dipthongs = {}


function randomJapanesePlaceName()
  local syllables = {
    "a","i","u","e","o",
    "ka","ki","ku","ke","ko",
    "sa","shi","su","se","so",
    "ta","chi","tsu","te","to",
    "na","ni","nu","ne","no",
    "ma","mi","mu","me","mo",
    "ya","yu","yo","wa","n",
    "ra","ri","ru","re","ro",
    "kya","kyu","kyo",
    -- "sha","shu","sho",
    "cha","chu","cho",
    -- "nya","nyu","nyo",
    -- "mya","myu","myo",
    "rya","ryu","ryo"
  }

  local suffixes = {
    "kawa","gawa","sawa","zawa","saki","zaki",
    "hama","yama","machi","do","shima"
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

  return nameString
end