Class = require 'src/lib/class'
Push = require 'src/graphics/push'

function includeAll(dir)
  dir = dir or ""
  local files = love.filesystem.getDirectoryItems(dir)
  for k, file in ipairs(files) do
    if string.sub(file, 1,1) ~= "." then
      trim = string.gsub( file, ".lua", "")
      if love.filesystem.getInfo(dir..file).type == "directory" then
       includeAll(dir..file.."/")
      else
       require(dir .. trim)
      end 
    end
  end
end

includeAll("/src/")