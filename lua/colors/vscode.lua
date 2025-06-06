--vim.opt.termguicolors = true
vim.cmd("hi clear")

vim.api.nvim_set_hl(0, "TabLineFill", { link = "TabLine" })
vim.api.nvim_set_hl(0, "Terminal", { link = "Normal" })
vim.api.nvim_set_hl(0, "CursorColumn", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "CursorIM", { link = "Cursor" })
vim.api.nvim_set_hl(0, "LineNrAbove", { link = "LineNr" })
vim.api.nvim_set_hl(0, "LineNrBelow", { link = "LineNr" })
vim.api.nvim_set_hl(0, "Debug", { link = "Special" })
vim.api.nvim_set_hl(0, "diffAdded", { link = "String" })
vim.api.nvim_set_hl(0, "diffRemoved", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffOnly", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffNoEOL", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffIsA", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffIdentical", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffDiffer", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffCommon", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "diffBDiffer", { link = "WarningMsg" })
vim.api.nvim_set_hl(0, "lCursor", { link = "Cursor" })
vim.api.nvim_set_hl(0, "CurSearch", { link = "Search" })
vim.api.nvim_set_hl(0, "CursorLineFold", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "CursorLineSign", { link = "CursorLine" })
vim.api.nvim_set_hl(0, "Character", { link = "Constant" })
vim.api.nvim_set_hl(0, "Conditional", { link = "Statement" })
vim.api.nvim_set_hl(0, "Define", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Exception", { link = "Statement" })
vim.api.nvim_set_hl(0, "Include", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Label", { link = "Statement" })
vim.api.nvim_set_hl(0, "Operator", { link = "Statement" })
vim.api.nvim_set_hl(0, "PreCondit", { link = "PreProc" })
vim.api.nvim_set_hl(0, "Repeat", { link = "Statement" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Special" })
vim.api.nvim_set_hl(0, "MessageWindow", { link = "Pmenu" })
vim.api.nvim_set_hl(0, "PopupNotification", { link = "Todo" })
vim.api.nvim_set_hl(0, "Structure", { link = "Typedef" })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })

--Background
vim.api.nvim_set_hl(0, "Normal", {fg = "NONE", bg = "#1D1D1D"})

--Language
vim.api.nvim_set_hl(0, "Type", {fg = "#D4D4D4", gui=bold })
vim.api.nvim_set_hl(0, "Keyword", {fg = "#569CD6" })
vim.api.nvim_set_hl(0, "PreProc", {fg = "#569CD6" })

vim.api.nvim_set_hl(0, "Variable", {fg = "#D4D4D4" })
vim.api.nvim_set_hl(0, "Boolean", {fg = "#CC856A" })
vim.api.nvim_set_hl(0, "Boolean", {fg = "#569CD6" })
vim.api.nvim_set_hl(0, "Number", {fg = "#CC856A" })
vim.api.nvim_set_hl(0, "String", {fg = "#64994C" })
vim.api.nvim_set_hl(0, "Constant", {fg = "#4EA006" })

vim.api.nvim_set_hl(0, "Comment", {fg = "#777777", bg = "NONE" })

vim.api.nvim_set_hl(0, "Function", {fg = "#D3CB7E" })
vim.api.nvim_set_hl(0, "Macro", {fg = "#D3CB7E" })
vim.api.nvim_set_hl(0, "Special", {fg = "#957FB8" })
vim.api.nvim_set_hl(0, "Parameter", {fg = "#82AAFF" })
vim.api.nvim_set_hl(0, "Delimiter", {fg = "#FFD700" })

vim.api.nvim_set_hl(0, "Statement", {fg = "#D35675", gui=bold })
vim.api.nvim_set_hl(0, "Identifier", {fg = "#FF80FF" })
vim.api.nvim_set_hl(0, "Typedef", {fg = "#D4D4D4", gui=bold })
vim.api.nvim_set_hl(0, "SpecialComment", {fg = "#00FF00" })

--HTML
vim.api.nvim_set_hl(0, "Tag", {fg = "#5E409D" })
vim.api.nvim_set_hl(0, "StorageClass", {fg = "#CE5D97", gui=bold })
vim.api.nvim_set_hl(0, "Title", {fg = "#FF80FF" })
--End Of Language

--Line Numbers and Cursor
vim.api.nvim_set_hl(0, "LineNr", {fg = "#595973"})
vim.api.nvim_set_hl(0, "CursorLineNr", {fg = "#5F8700"})
vim.api.nvim_set_hl(0, "Cursor", {fg = "#000000", bg = "#00ff00"})
vim.api.nvim_set_hl(0, "CursorLine", {fg = "NONE"})
--Folding
vim.api.nvim_set_hl(0, "FoldColumn", {fg = "#add8e6"})
vim.api.nvim_set_hl(0, "Folded", {fg = "#aa0000", bg = "#191919", bold = true})

--Diagnostic Colors
vim.api.nvim_set_hl(0, "DiagnosticError", {fg = "#ff0000"})
vim.api.nvim_set_hl(0, "DiagnosticWarn", {fg = "#ffff00"})
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = "#00ff00"})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg = "#57E2E2"})
--Diagnostic window
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "NONE"})
vim.api.nvim_set_hl(0, "FLoatBorder", {fg = "#98BB6C", bg = "NONE"})
vim.api.nvim_set_hl(0, "LSPInfoBorder", {fg = "#333333", bg = "NONE"})

--Spelling
vim.api.nvim_set_hl(0, "SpellBad", {undercurl = true})
vim.api.nvim_set_hl(0, "SpellCap", {fg = "#00ff00", undercurl = true})
vim.api.nvim_set_hl(0, "SpellLocal", {fg = "#5F8700", undercurl = true})
vim.api.nvim_set_hl(0, "SpellRare", {fg = "#ff80ff", undercurl = true})
vim.api.nvim_set_hl(0, "Underlined", {fg = "#80a0ff", underline = true})

--Auto complete window
vim.api.nvim_set_hl(0, "Pmenu", {fg = "#dddddd", bg = "NONE"})
vim.api.nvim_set_hl(0, "PmenuThumb", {fg = "#98BB6C", bg = "NONE"})
vim.api.nvim_set_hl(0, "PmenuSbar", {fg = "#ff0000", bg = "#00ffff"})
vim.api.nvim_set_hl(0, "PmenuSel", {fg = "#cccc00", bg = "NONE"})
vim.api.nvim_set_hl(0, "CmpItemKind", {fg = "#cccccc", bg = "NONE"})

--StatusLine
vim.api.nvim_set_hl(0, "StatusLine", {fg = "NONE", bg = "NONE"})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = "NONE", bg = "NONE"})

vim.api.nvim_set_hl(0, "TabLineSel", {fg = "#cccccc", bg = "#101010", bold = true})
vim.api.nvim_set_hl(0, "TabLine", {fg = "#cccccc", bg = "NONE"})

--Unknown
vim.api.nvim_set_hl(0, "NonText", {fg = "#444444"})
vim.api.nvim_set_hl(0, "MsgArea", {fg = "#add8e6"})
vim.api.nvim_set_hl(0, "NormalNC", {bg = "NONE"})
vim.api.nvim_set_hl(0, "ColorColumn", {fg = "NONE", bg = "#8b0000"})
vim.api.nvim_set_hl(0, "EndOfBuffer", {fg = "#add8e6"})
vim.api.nvim_set_hl(0, "QuickFixLine", {fg = "#ffffff", bg = "#8b008b"})
vim.api.nvim_set_hl(0, "ErrorMsg", {fg = "#ffffff", bg = "NONE"})
vim.api.nvim_set_hl(0, "Conceal", {fg = "NONE"})
vim.api.nvim_set_hl(0, "IncSearch", {fg = "#00ff00", reverse = true})
vim.api.nvim_set_hl(0, "MatchParen", {fg = "NONE", bg = "#008b8b"})
vim.api.nvim_set_hl(0, "ModeMsg", {fg = "NONE", bold = true})
vim.api.nvim_set_hl(0, "MoreMsg", {fg = "#2e8b57"})
vim.api.nvim_set_hl(0, "Question", {fg = "#00ff00"})
vim.api.nvim_set_hl(0, "Search", {fg = "#f8f8f8", bg = "#003500"})
vim.api.nvim_set_hl(0, "SignColumn", {fg = "#008b8b"})
vim.api.nvim_set_hl(0, "SpecialKey", {fg = "#00ffff"})
vim.api.nvim_set_hl(0, "ToolbarButton", {fg = "NONE", bg = "#999999", bold = true})
vim.api.nvim_set_hl(0, "ToolbarLine", {fg = "NONE"})
vim.api.nvim_set_hl(0, "Visual", {fg = "#ffff00", bg = "#777777"})
vim.api.nvim_set_hl(0, "VisualNOS", {fg = "NONE", bold = true , underline = true})
vim.api.nvim_set_hl(0, "WarningMsg", {fg = "#ff0000", bg = "NONE"})
vim.api.nvim_set_hl(0, "WildMenu", {fg = "#000000", bg = "#ffff00", bold = true})
vim.api.nvim_set_hl(0, "debugBreakpoint", {fg = "#00008b", bg = "#ff0000"})
vim.api.nvim_set_hl(0, "debugPC", {fg = "#00008b", bg = "#0000ff"})
vim.api.nvim_set_hl(0, "Directory", {fg = "#00ffff"})
vim.api.nvim_set_hl(0, "Ignore", {fg = "#333333"})
vim.api.nvim_set_hl(0, "Todo", {fg = "#ffff00", bg = "#000000"})
vim.api.nvim_set_hl(0, "DiffAdd", {fg = "#ffffff", bg = "#5f875f"})
vim.api.nvim_set_hl(0, "DiffChange", {fg = "#4040ff", bg = "NONE"})
vim.api.nvim_set_hl(0, "DiffText", {fg = "#000000", bg = "#c6c6c6"})
vim.api.nvim_set_hl(0, "DiffDelete", {fg = "#ffffff", bg = "#af5faf"})
