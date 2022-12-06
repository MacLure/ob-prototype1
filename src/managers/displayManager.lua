DisplayManager = Class{}
gameWidth, gameHeight = 1280, 720

function DisplayManager:new()
  self.resolutions = {
    -- 16:9
    {2560,1440},
    {1920,1080},
    {1366,768},
    {1280,720},
    -- 16:10
    {1920,1200},
    {1680,1050},
    {1440,900},
    {1280,800},
    -- 4:3
    {1024,768},
    {800,600},
    {640,480}
  }

  self.fullscreen = true
  -- if userData:getData("userdata", "fullscreen") then
  --   if tonumber(userData:getData("userdata", "fullscreen")) ~= 1 then
  --     self.fullscreen = false
  --   end
  -- end
  
  self.vsync = true
  -- if userData:getData("userdata", "vsync") then
  --   if tonumber(userData:getData("userdata", "vsync")) ~= 1 then
  --     self.vsync = false
  --   end
  -- end
  
  self.resolutionIndex = 1
  -- if userData:getData("userdata", "resolution") then
  --   self.resolutionIndex = tonumber(userData:getData("userdata", "resolution"))
  -- end

  return self
end

function DisplayManager:setDisplay()
  local windowWidth = self.resolutions[self.resolutionIndex][1]
  local windowHeight = self.resolutions[self.resolutionIndex][2]

  Push:setupScreen(gameWidth, gameHeight, windowWidth, windowHeight, {
    vsync = self.vsync,
    fullscreen = self.fullscreen,
    resizable = false,
    pixelperfect = true,
    highdpi = true,
    stretched = true
  }) 
end