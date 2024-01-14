local colors = {
  white  = "#ffffff",
  black  = "#000000",
  red  = "#ff0000",
  green  = "#00ff00",
  blue  = "#0000ff",
  teal  = "#62E0FF",
  yellow  = "#ffff00",
  violet = "#75507B",
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
    a = { fg = colors.white, bg = colors.blue , "bold", },
  },
  inactive = {
    b = { fg = colors.color11, bg = colors.green },
    c = { fg = colors.red, bg = colors.black },
    a = { fg = colors.color12, bg = colors.blue , "bold", },
  },
  insert = {
    a = { fg = colors.black, bg = colors.red , "bold", },
  },
  normal = {
    b = { fg = colors.green, bg = colors.black },
    c = { fg = colors.teal, bg = colors.none },
    a = { fg = colors.black, bg = colors.green , "bold", },
  },
}

return cherry_rainbow
