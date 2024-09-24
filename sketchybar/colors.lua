return {
  black = 0xff272727,
  white = 0xffe8dbb6,
  red = 0xff91170c,
  green = 0xff979736,
  blue = 0xff548386,
  yellow = 0xffcd9b3e,
  orange = 0xfffc7642a,
  magenta = 0xffa66584,
  grey = 0xff8f8375,
  transparent = 0x00000000,

  bar = {
    bg = 0xf01d1c1c,
    border = 0xff2c2e34,
  },
  popup = {
    bg = 0xc01d1c1c,
    border = 0xff8f8375
  },
  bg1 = 0xff1d1c1c,
  bg2 = 0xff645c54,

  with_alpha = function(color, alpha)
    if alpha > 1.0 or alpha < 0.0 then return color end
    return (color & 0x00ffffff) | (math.floor(alpha * 255.0) << 24)
  end,
}
