local colors = {
  white  = "#dddddd",
  black  = "#090909",
  mellow_black  = "#262626",
  mellow_green = "#66800B",
  --mellow_green = "#5F875F",
  mellow_red  = "#D75F5F",
  mellow_yellow  = "#AD8301",
  teal  = "#5FAFD7",
  red  = "#ff0000",
  yellow  = "#ffff00",
  green  = "#00c800",
  blue  = "#0000ff",
  lightblue  = "#00aaff",
  teal  = "#62E0FF",
  yellow  = "#ffff00",
  violet = "#dd50aa",
  purple = "#8700FF",
  grey = "#303030",
  font_grey = "#606060",
  navy = "#00008b",
  color11  = "#3e4b59",
  color12  = "#e6e1cf",
  color13  = "#14191f",
  color5   = "#ffee99",
  none   = NONE,
}

local cherry_rainbow = {
  normal = {
    a = { fg = colors.mellow_green, bg = colors.grey , "bold", },
    b = { fg = colors.mellow_green, bg = colors.color13 },
    c = { fg = colors.font_grey, bg = colors.none },
  },
  visual = {
    a = { fg = colors.yellow, bg = colors.grey , "bold", },
    b = { fg = colors.yellow, bg = colors.none },
    c = { fg = colors.yellow, bg = colors.none },
  },
  replace = {
    a = { fg = colors.mellow_red, bg = colors.grey , "bold", },
    b = { fg = colors.mellow_red, bg = colors.none },
    c = { fg = colors.mellow_red, bg = colors.none },
  },
  insert = {
    a = { fg = colors.teal, bg = colors.grey , "bold", },
    b = { fg = colors.teal, bg = colors.none },
    c = { fg = colors.teal, bg = colors.none },
  },
  command = {
    a = { fg = colors.violet, bg = colors.grey , "bold", },
    b = { fg = colors.violet, bg = colors.none },
    c = { fg = colors.violet, bg = colors.none },
  },
  inactive = {
    b = { fg = colors.color11, bg = colors.none },
    c = { fg = colors.green, bg = colors.none },
    a = { fg = colors.color12, bg = colors.none , "bold", },
  },
}

return cherry_rainbow
