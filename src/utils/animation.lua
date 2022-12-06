Animation = Class{}

function Animation:new(frames, loop, spf)
  if loop == nil or loop == true then
    loop = true
  end
  local this = {
    frames = frames or { 1 },
    index = 1,
    spf = spf or 0.1125, -- should be synced with player 1-tile transition speed for smoother walk animation
    time = 0,
    loop = loop  
  }
  setmetatable(this, self)
  return this
end

function Animation:update(dt)
  self.time = self.time + dt
  if self.time >= self.spf then
    self.index = self.index+1
    self.time = 0
    if self.index > #self.frames then
      if self.loop then
        self.index = 1
      else
        self.index = #self.frames
      end
    end
  end
end

function Animation:setFrames(frames)
  self.frames = frames
  self.index = math.min(self.index, #self.frames)
end

function Animation:frame()
  return self.frames[self.index]
end

function Animation:isFinished()
  return self.loop == false and self.index == #self.frames
end