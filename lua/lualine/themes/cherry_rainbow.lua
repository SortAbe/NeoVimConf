local colors = {
  white  = "#ffffff",
  black  = "#17191a",
  red  = "#ff0000",
  green  = "#00c800",
  blue  = "#0000ff",
  lightblue  = "#00aaff",
  teal  = "#62E0FF",
  yellow  = "#ffff00",
  violet = "#dd50aa",
  purple = "#8700FF",
  mellow_green = "#4Ec346",
  grey = "#303030",
  navy = "#00008b",
  color11  = "#3e4b59",
  color12  = "#e6e1cf",
  color13  = "#14191f",
  color5   = "#ffee99",
  none   =  "#101010",
}

local cherry_rainbow = {
  visual = {
    a = { fg = colors.yellow, bg = colors.grey , "bold", },
    b = { fg = colors.yellow, bg = colors.none },
    c = { fg = colors.yellow, bg = colors.none },
  },
  replace = {
    a = { fg = colors.red, bg = colors.grey , "bold", },
  },
  inactive = {
    b = { fg = colors.color11, bg = colors.none },
    c = { fg = colors.green, bg = colors.none },
    a = { fg = colors.color12, bg = colors.none , "bold", },
  },
  insert = {
    a = { fg = colors.red, bg = colors.grey , "bold", },
    b = { fg = colors.red, bg = colors.none },
    c = { fg = colors.red, bg = colors.none },
  },
  normal = {
    b = { fg = colors.mellow_green, bg = colors.color13 },
    c = { fg = colors.mellow_green, bg = colors.none },
    a = { fg = colors.mellow_green, bg = colors.grey , "bold", },
  },
  command = {
    b = { fg = colors.violet, bg = colors.none },
    c = { fg = colors.violet, bg = colors.none },
    a = { fg = colors.violet, bg = colors.grey , "bold", },
  },
}

return cherry_rainbow
