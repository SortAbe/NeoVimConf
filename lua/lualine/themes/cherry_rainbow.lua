local colors = {
  white  = "#ffffff",
  black  = "#000000",
  red  = "#ff0000",
  green  = "#00c800",
  blue  = "#0000ff",
  lightblue  = "#00aaff",
  teal  = "#62E0FF",
  yellow  = "#ffff00",
  violet = "#ff80ff",
  purple = "#8700FF",
  darkgreen = "#4EA006",
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
  },
  replace = {
    a = { fg = colors.black, bg = colors.red , "bold", },
  },
  inactive = {
    b = { fg = colors.color11, bg = colors.red },
    c = { fg = colors.red, bg = colors.black },
    a = { fg = colors.color12, bg = colors.red , "bold", },
  },
  insert = {
    a = { fg = colors.black, bg = colors.red , "bold", },
    b = { fg = colors.red, bg = colors.black },
  },
  normal = {
    b = { fg = colors.green, bg = colors.black },
    c = { fg = colors.teal, bg = colors.none },
    a = { fg = colors.black, bg = colors.green , "bold", },
  },
  command = {
    b = { fg = colors.purple, bg = colors.black },
    c = { fg = colors.violet, bg = colors.none },
    a = { fg = colors.black, bg = colors.purple , "bold", },
  },
}

return cherry_rainbow
