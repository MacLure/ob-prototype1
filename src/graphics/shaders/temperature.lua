gShaders['temperature'] = love.graphics.newShader[[
  vec4 effect(vec4 color, Image texture, vec2 uvs, vec2 pixcoord)
  {
    vec4 pixel = Texel(texture, uvs);

    if (pixel.r < 0.05) {
      pixel.r = 0;
      pixel.g = 0;
      pixel.b = 1;
    }

    else if (pixel.r >= 0.05 && pixel.r < 0.15) {
      pixel.r = 0;
      pixel.g = 0.5;
      pixel.b = 1;
    }

    else if (pixel.r >= 0.15 && pixel.r < 0.25) {
      pixel.r = 0;
      pixel.g = 1;
      pixel.b = 1;
    }

    else if (pixel.r >= 0.25 && pixel.r < 0.40) {
      pixel.r = 0;
      pixel.g = 1;
      pixel.b = 0.5;
    }

    else if (pixel.r >= 0.40 && pixel.r < 0.60) {
      pixel.r = 0;
      pixel.g = 1;
      pixel.b = 0;
    }

    else if (pixel.r >= 0.60 && pixel.r < 0.75) {
      pixel.r = 0.5;
      pixel.g = 1;
      pixel.b = 0;
    }

    else if (pixel.r >= 0.75 && pixel.r < 0.85) {
      pixel.r = 1;
      pixel.g = 1;
      pixel.b = 0;
    }

    else if (pixel.r >= 0.85 && pixel.r < 0.95) {
      pixel.r = 1;
      pixel.g = 0.5;
      pixel.b = 0;
    }

    else if (pixel.r >= 0.95) {
      pixel.r = 1;
      pixel.g = 0;
      pixel.b = 0;
    }

    return pixel;
  }
]]
