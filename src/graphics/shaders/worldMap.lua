gShaders['worldMap'] = love.graphics.newShader[[
  vec4 effect(vec4 color, Image texture, vec2 uvs, vec2 pixcoord)
  {
    vec4 pixel = Texel(texture, uvs);

    pixel.r = pixel.r + 0.2;

    if (pixel.r < 0.33) {
      pixel.r = 0.87;
      pixel.g = 0.87;
      pixel.b = 0.75;
    }

    else if (pixel.r >= 0.33 && pixel.r < 0.40) {
        pixel.r = 0.75;
        pixel.g = 0.81;
        pixel.b = 0.69;
      }

    else if (pixel.r >= 0.35 && pixel.r < 0.40) {
        pixel.r = 0.69;
        pixel.g = 0.78;
        pixel.b = 0.62;
      }

    else if (pixel.r >= 0.40 && pixel.r < 0.47) {
        pixel.r = 0.47;
        pixel.g = 0.59;
        pixel.b = 0.56;
      }

    else if (pixel.r >= 0.47 && pixel.r < 0.50) {
        pixel.r = 0.31;
        pixel.g = 0.43;
        pixel.b = 0.50;
      }

    else if (pixel.r >= 0.5 && pixel.r < 0.53) {
        pixel.r = 0.25;
        pixel.g = 0.22;
        pixel.b = 0.12;
      }

    else if (pixel.r >= 0.53 && pixel.r < 0.56) {
      pixel.r = 0.47;
      pixel.g = 0.37;
      pixel.b = 0.18;
    }

    else if (pixel.r >= 0.56 && pixel.r < 0.59) {
      pixel.r = 0.69;
      pixel.g = 0.56;
      pixel.b = 0.34;
    }

    else if (pixel.r >= 0.59 && pixel.r < 0.62) {
      pixel.r = 0.78;
      pixel.g = 0.69;
      pixel.b = 0.47;
    }

    else if (pixel.r >= 0.62) {
      pixel.r = 0.87;
      pixel.g = 0.87;
      pixel.b = 0.75;
    }

    return pixel;
  }
]]
