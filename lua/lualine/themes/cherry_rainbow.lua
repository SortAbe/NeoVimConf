local colors = {
  white  = "#ffffff",
  black  = "#000000",
  red  = "#ff0000",
  green  = "#00c800",
  blue  = "#0000ff",
  lightblue  = "#00aaff",
  teal  = "#62E0FF",
  yellow  = "#ffff00",
  violet = "#dd50aa",
  purple = "#8700FF",
  mellow_green = "#4Ec346",
  grey = "#444444",
  navy = "#00008b",
  color11  = "#3e4b59",
  color12  = "#e6e1cf",
  color13  = "#14191f",
  none   = "NONE",
  color5   = "#ffee99",
}

local cherry_rainbow = {
  visual = {
    a = { fg = colors.black, bg = colors.yellow , "bold", },
    b = { fg = colors.yellow, bg = colors.black },
    c = { fg = colors.yellow, bg = colors.none },
  },
  replace = {
    a = { fg = colors.black, bg = colors.red , "bold", },
  },
  inactive = {
    b = { fg = colors.color11, bg = colors.green },
    c = { fg = colors.green, bg = colors.black },
    a = { fg = colors.color12, bg = colors.green , "bold", },
  },
  insert = {
    a = { fg = colors.black, bg = colors.red , "bold", },
    b = { fg = colors.red, bg = colors.black },
    c = { fg = colors.red, bg = colors.none },
  },
  normal = {
    b = { fg = colors.mellow_green, bg = colors.black },
    c = { fg = colors.mellow_green, bg = colors.none },
    a = { fg = colors.black, bg = colors.mellow_green , "bold", },
  },
  command = {
    b = { fg = colors.violet, bg = colors.black },
    c = { fg = colors.violet, bg = colors.none },
    a = { fg = colors.black, bg = colors.violet , "bold", },
  },
}

return cherry_rainbow
