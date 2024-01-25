--Name:         cherry_rainbow

vim.api.nvim_set_hl(0, "VertSplit", {link = "StatusLineNC"}) 
vim.api.nvim_set_hl(0, "StatusLineTerm", {link = "StatusLine"}) 
vim.api.nvim_set_hl(0, "StatusLineTermNC", {link = "StatusLineNC"}) 
vim.api.nvim_set_hl(0, "TabLineFill", {link = "TabLine"}) 
vim.api.nvim_set_hl(0, "Terminal", {link = "Normal"}) 
vim.api.nvim_set_hl(0, "CursorColumn", {link = "CursorLine"}) 
vim.api.nvim_set_hl(0, "CursorIM", {link = "Cursor"}) 
vim.api.nvim_set_hl(0, "LineNrAbove", {link = "LineNr"}) 
vim.api.nvim_set_hl(0, "LineNrBelow", {link = "LineNr"}) 
vim.api.nvim_set_hl(0, "Debug", {link = "Special"}) 
vim.api.nvim_set_hl(0, "diffAdded", {link = "String"}) 
vim.api.nvim_set_hl(0, "diffRemoved", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffOnly", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffNoEOL", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffIsA", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffIdentical", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffDiffer", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffCommon", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "diffBDiffer", {link = "WarningMsg"}) 
vim.api.nvim_set_hl(0, "lCursor", {link = "Cursor"}) 
vim.api.nvim_set_hl(0, "CurSearch", {link = "Search"}) 
vim.api.nvim_set_hl(0, "CursorLineFold", {link = "CursorLine"}) 
vim.api.nvim_set_hl(0, "CursorLineSign", {link = "CursorLine"}) 
vim.api.nvim_set_hl(0, "Boolean", {link = "Constant"}) 
vim.api.nvim_set_hl(0, "Character", {link = "Constant"}) 
vim.api.nvim_set_hl(0, "Conditional", {link = "Statement"}) 
vim.api.nvim_set_hl(0, "Define", {link = "PreProc"}) 
vim.api.nvim_set_hl(0, "Exception", {link = "Statement"}) 
vim.api.nvim_set_hl(0, "Include", {link = "PreProc"}) 
vim.api.nvim_set_hl(0, "Keyword", {link = "Statement"}) 
vim.api.nvim_set_hl(0, "Label", {link = "Statement"}) 
vim.api.nvim_set_hl(0, "Macro", {link = "PreProc"}) 
vim.api.nvim_set_hl(0, "Operator", {link = "Statement"}) 
vim.api.nvim_set_hl(0, "PreCondit", {link = "PreProc"}) 
vim.api.nvim_set_hl(0, "Repeat", {link = "Statement"}) 
vim.api.nvim_set_hl(0, "SpecialChar", {link = "Special"}) 
vim.api.nvim_set_hl(0, "String", {link = "Constant"}) 
vim.api.nvim_set_hl(0, "MessageWindow", {link = "Pmenu"}) 
vim.api.nvim_set_hl(0, "PopupNotification", {link = "Todo"}) 

vim.api.nvim_set_hl(0, "Structure", {link = "Typedef"}) 
vim.api.nvim_set_hl(0, "Float", {link = "Number"}) 

--Custom:
vim.api.nvim_set_hl(0, "Normal", {guifg=NONE, guibg=NONE, gui=NONE, cterm=NONE})

vim.api.nvim_set_hl(0, "Constant", {guifg=#4EA006, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Comment", {guifg=#777777, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Special", {guifg=#4465B4, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Statement", {guifg=#D35675, , guibg=NONE, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "Function", {guifg=#75507B, guibg=NONE, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "Identifier", {guifg=#ff80ff, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Variable", {guifg=#ffffff, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Type", {guifg=#8D81C2, guibg=NONE, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "Typedef", {guifg=#4465B4, , guibg=NONE, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "StorageClass", {guifg=#4465B4, guibg=NONE, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "Tag", {guifg=#4465B4, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Delimiter", {guifg=#ffa500, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "SpecialComment", {guifg=#00ff00, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Number", {guifg=#62E0FF, guibg=NONE, gui=NONE, cterm=NONE})

vim.api.nvim_set_hl(0, "LineNr", {guifg=#7A82A3, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "CursorLineNr", {guifg=#ff80ff, guibg=#666666, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Error", {guifg=#ff0000, guibg=#ffffff, gui=reverse, cterm=reverse})
vim.api.nvim_set_hl(0, "NonText", {guifg=#444444, guibg=NONE, gui=NONE, cterm=NONE})

--Coc, colors
vim.api.nvim_set_hl(0, "CocErrorSign", {guifg=#ff0000, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "CocWarningSign", {guifg=#ffff00, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "CocInfoSign", {guifg=#00ff00, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "CocHintSign", {guifg=#62E0FF, guibg=NONE, gui=NONE, cterm=NONE})


vim.api.nvim_set_hl(0, "ColorColumn", {guifg=NONE, guibg=#8b0000, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "CursorLine", {guifg=NONE, guibg=#666666, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "EndOfBuffer", {guifg=#add8e6, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "StatusLine", {guifg=NONE, guibg=NONE, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "StatusLineNC", {guifg=NONE, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "TabLineSel", {guifg=#333333, guibg=#ffffff, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "TabLine", {guifg=#333333, guibg=#d3d3d3, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Pmenu", {guifg=#ffffff, guibg=#4d4d4d, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "PmenuSbar", {guifg=NONE, guibg=NONE, gui=NONE, ctermfg=NONE, ctermbg=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "PmenuSel", {guifg=#000000, guibg=#bebebe, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "PmenuThumb", {guifg=NONE, guibg=#ffffff, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "QuickFixLine", {guifg=#ffffff, guibg=#8b008b, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Cursor", {guifg=#000000, guibg=#00ff00, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "ErrorMsg", {guifg=#ffffff, guibg=#ff0000, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Conceal", {guifg=NONE, guibg=NONE, gui=NONE, ctermfg=NONE, ctermbg=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "FoldColumn", {guifg=#add8e6, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Folded", {guifg=#00ff00, guibg=#000000, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "IncSearch", {guifg=#00ff00, guibg=NONE, gui=reverse, cterm=reverse})
vim.api.nvim_set_hl(0, "MatchParen", {guifg=NONE, guibg=#008b8b, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "ModeMsg", {guifg=NONE, guibg=NONE, gui=bold, ctermfg=NONE, ctermbg=NONE, cterm=bold})
vim.api.nvim_set_hl(0, "MoreMsg", {guifg=#2e8b57, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Question", {guifg=#00ff00, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Search", {guifg=#000000, guibg=#62E0FF, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "SignColumn", {guifg=#008b8b, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "SpecialKey", {guifg=#00ffff, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "ToolbarButton", {guifg=NONE, guibg=#999999, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "ToolbarLine", {guifg=NONE, guibg=NONE, gui=NONE, ctermfg=NONE, ctermbg=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Visual", {guifg=#ffff00, guibg=#777777, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "VisualNOS", {guifg=NONE, guibg=NONE, gui=bold,underline, ctermfg=NONE, ctermbg=NONE, cterm=bold,underline})
vim.api.nvim_set_hl(0, "WarningMsg", {guifg=#ff0000, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "WildMenu", {guifg=#000000, guibg=#ffff00, gui=bold, cterm=bold})
vim.api.nvim_set_hl(0, "debugBreakpoint", {guifg=#00008b, guibg=#ff0000, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "debugPC", {guifg=#00008b, guibg=#0000ff, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "SpellBad", {guibg=NONE, guisp=#ff0000, gui=undercurl, cterm=undercurl})
vim.api.nvim_set_hl(0, "SpellCap", {guifg=#00ff00, guibg=NONE, guisp=#00ff00, gui=undercurl, cterm=underline})
vim.api.nvim_set_hl(0, "SpellLocal", {guifg=#00ffff, guibg=NONE, guisp=#00ffff, gui=undercurl, cterm=underline})
vim.api.nvim_set_hl(0, "SpellRare", {guifg=#ff80ff, guibg=NONE, guisp=#ff80ff, gui=undercurl, cterm=underline})
vim.api.nvim_set_hl(0, "Directory", {guifg=#00ffff, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Title", {guifg=#ff80ff, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Ignore", {guifg=#333333, guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "PreProc", {guifg=#ff0000, , guibg=NONE, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "Todo", {guifg=#ffff00, guibg=#0000ff, gui=reverse, cterm=reverse})
vim.api.nvim_set_hl(0, "Underlined", {guifg=#80a0ff, guibg=NONE, gui=underline, cterm=underline})
vim.api.nvim_set_hl(0, "DiffAdd", {guifg=#ffffff, guibg=#5f875f, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "DiffChange", {guifg=#ffffff, guibg=#5f87af, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "DiffText", {guifg=#000000, guibg=#c6c6c6, gui=NONE, cterm=NONE})
vim.api.nvim_set_hl(0, "DiffDelete", {guifg=#ffffff, guibg=#af5faf, gui=NONE, cterm=NONE})
