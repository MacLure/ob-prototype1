AudioManager = Class{}

function AudioManager:new()
  -- self.sfxVolume = userData:getData("userdata", "volume_volume_sfxmaster") or 1
  -- self.musicVolume = userData:getData("userdata", "volume_music") or 1
  -- self.masterVolume = userData:getData("userdata", "volume_master") or 1
  self.sfxVolume = 1
  self.musicVolume = 1
  self.masterVolume = 1

  self:setVolume("master", self.masterVolume)
  self:setVolume("sfx", self.sfxVolume)
  self:setVolume("music", self.sfxVolume)

  self.currentTrack = nil
  return self
end

function AudioManager:getVolume(type)
  if type == "music" then
    return self.musicVolume
  elseif type == "sfx" then
    return self.sfxVolume
  else
    return self.masterVolume
  end
end

function AudioManager:setVolume(type, value)
  local newValue = clamp(self:getVolume(type) + value, 0, 1)
  if type == "music" then
    self.musicVolume = newValue
    for k,v in pairs(gMusic) do
      v:setVolume(self.musicVolume)
    end
  elseif type == "sfx" then
    self.sfxVolume = newValue
    for k,v in pairs(gSfx) do
      v:setVolume(self.sfxVolume)
    end
  else
    self.masterVolume = newValue
    love.audio.setVolume(self.masterVolume)
  end
end

function AudioManager:startTrack(track)
  if self.currentTrack == gMusic[track] then return end
  if self.currentTrack then  self.currentTrack:stop() end

  self.currentTrack = gMusic[track]
  gMusic[track]:setLooping(true)
  gMusic[track]:play()
end

function AudioManager:playUiSound(sound)
  gSfx[sound]:stop()
  gSfx[sound]:play()
end

function AudioManager:playGameSound(sound)
  gSfx[sound]:stop()
  gSfx[sound]:play()
end

function AudioManager:audioFinished(sound)
  return not gSfx[sound]:isPlaying()
end