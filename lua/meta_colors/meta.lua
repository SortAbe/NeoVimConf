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
vim.api.nvim_set_hl(0, "DiagnosticInfo", {fg = "#00aa00"})
vim.api.nvim_set_hl(0, "DiagnosticHint", {fg = "#80a0ff"})
--Diagnostic window
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "NONE"})
vim.api.nvim_set_hl(0, "FLoatBorder", {fg = "#404040", bg = "NONE"})
vim.api.nvim_set_hl(0, "LSPInfoBorder", {fg = "#333333", bg = "NONE"})

--Spelling
vim.api.nvim_set_hl(0, "SpellBad", {undercurl = true})
vim.api.nvim_set_hl(0, "SpellCap", {fg = "#00ff00", undercurl = true})
vim.api.nvim_set_hl(0, "SpellLocal", {fg = "#5F8700", undercurl = true})
vim.api.nvim_set_hl(0, "SpellRare", {fg = "#ff80ff", undercurl = true})
vim.api.nvim_set_hl(0, "Underlined", {fg = "#80a0ff", underline = true})

--Auto complete window
vim.api.nvim_set_hl(0, "Pmenu", {fg = "#dddddd", bg = "NONE"})
vim.api.nvim_set_hl(0, "PmenuThumb", {fg = "#303030", bg = "NONE"})
vim.api.nvim_set_hl(0, "PmenuSbar", {fg = "#ff0000", bg = "#00ffff"})
vim.api.nvim_set_hl(0, "PmenuSel", {fg = "#cccc00", bg = "NONE"})
vim.api.nvim_set_hl(0, "CmpItemKind", {fg = "#cccccc", bg = "NONE"})

--StatusLine
vim.api.nvim_set_hl(0, "StatusLine", {fg = "NONE", bg = "NONE"})
vim.api.nvim_set_hl(0, "StatusLineNC", {fg = "NONE", bg = "NONE"})

vim.api.nvim_set_hl(0, "TabLineSel", {fg = "#cccccc", bg = "#101010", bold = true})
vim.api.nvim_set_hl(0, "TabLine", {fg = "#cccccc", bg = "NONE"})

--Noice
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", {fg = "#404040"})
vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", {fg = "#98BB6C"})
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", {fg = "#404040"})
vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", {fg = "#bbbb00"})
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderSearch", {fg = "#5F8700"})
--Notify 
vim.api.nvim_set_hl(0, "NotifyERRORBorder", {fg = "#404040"})
vim.api.nvim_set_hl(0, "NotifyWARNBorder", {fg = "#404040"})
vim.api.nvim_set_hl(0, "NotifyINFOBorder", {fg = "#404040"})
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", {fg = "#404040"})
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", {fg = "#404040"})

vim.api.nvim_set_hl(0, "NotifyERRORIcon", {fg = "#900000"})
vim.api.nvim_set_hl(0, "NotifyWARNIcon", {fg = "#D78000"})
vim.api.nvim_set_hl(0, "NotifyINFOIcon", {fg = "#707070"})
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", {fg = "#707070"})
vim.api.nvim_set_hl(0, "NotifyTRACEIcon", {fg = "#007800"})

vim.api.nvim_set_hl(0, "NotifyERRORTitle" , {fg = "#707070"})
vim.api.nvim_set_hl(0, "NotifyWARNTitle", {fg = "#707070"})
vim.api.nvim_set_hl(0, "NotifyINFOTitle", {fg = "#707070"})
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle" , {fg = "#707070"})
vim.api.nvim_set_hl(0, "NotifyTRACETitle" , {fg = "#707070"})

vim.api.nvim_set_hl(0, "NotifyERRORBody", { fg = "#707070" })
vim.api.nvim_set_hl(0, "NotifyWARNBody", { fg = "#707070" })
vim.api.nvim_set_hl(0, "NotifyINFOBody", { fg = "#707070" })
vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { fg = "#707070" })
vim.api.nvim_set_hl(0, "NotifyTRACEBody", { fg = "#707070" })

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
