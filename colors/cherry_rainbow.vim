set background=dark
hi clear
let g:colors_name = 'cherry_rainbow'
let s:t_Co = &t_Co

hi! link VertSplit StatusLineNC
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLineFill TabLine
hi! link Terminal Normal
hi! link CursorColumn CursorLine
hi! link CursorIM Cursor
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link Debug Special
hi! link diffAdded String
hi! link diffRemoved WarningMsg
hi! link diffOnly WarningMsg
hi! link diffNoEOL WarningMsg
hi! link diffIsA WarningMsg
hi! link diffIdentical WarningMsg
hi! link diffDiffer WarningMsg
hi! link diffCommon WarningMsg
hi! link diffBDiffer WarningMsg
hi! link lCursor Cursor
hi! link CurSearch Search
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link Boolean Constant
hi! link Character Constant
hi! link Conditional Statement
hi! link Define PreProc
hi! link Exception Statement
hi! link Include PreProc
hi! link Label Statement
hi! link Operator Statement
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link String Constant
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo

hi! link Structure Typedef
hi! link Float Number

"Custom:
hi Normal guifg=NONE guibg=NONE
"
"Code highlights
hi Statement guifg=#D35675  gui=bold
hi Identifier guifg=#ff80ff
hi Variable guifg=#dddddd
hi Type guifg=#8D81C2 gui=bold
hi Number guifg=#bb0000
hi Boolean guifg=#bb2f2f
hi Parameter guifg=#08B6EF

hi Typedef guifg=#50cccc  gui=bold
hi StorageClass guifg=#4465B4 gui=bold
hi Tag guifg=#4465B4
hi Special guifg=#00dddd
hi Delimiter guifg=#ffa500
hi Constant guifg=#4EA006

hi SpecialComment guifg=#00ff00

hi Function guifg=#75507B
hi Macro guifg=#a9507B

hi Keyword guifg=#4465b4
hi Comment guifg=#777777 guibg=NONE
"End of code highlights

"Meta
hi LineNr guifg=#7A82A3
hi CursorLineNr guifg=#00cc00
hi Error guifg=#ff0000 guibg=#ffffff gui=reverse cterm=reverse
hi DiagnosticError guifg=#ff0000 cterm=reverse
hi DiagnosticWarn guifg=#ffff00 cterm=reverse
hi DiagnosticInfo guifg=#0000ff cterm=reverse
hi DiagnosticInfo guifg=#00ff00 cterm=reverse
hi NonText guifg=#444444
hi MsgArea guifg=#add8e6
hi NormalFloat guibg=NONE
hi NormalNC guibg=NONE
hi FLoatBorder guifg=#333333 guibg=NONE
hi LSPInfoBorder guifg=#333333 guibg=NONE

"Built in
hi ColorColumn guifg=NONE guibg=#8b0000
hi CursorLine guifg=NONE
hi EndOfBuffer guifg=#add8e6
hi StatusLine guifg=NONE gui=bold
hi StatusLineNC guifg=NONE
hi TabLineSel guifg=#333333 guibg=#ffffff gui=bold
hi TabLine guifg=#333333 guibg=#d3d3d3

hi CmpItemKind guifg=#cccccc guibg=NONE

hi Pmenu guifg=#dddddd guibg=NONE
hi PmenuSbar guifg=#ff0000 guibg=#00ffff
hi PmenuSel guifg=#cccc00 guibg=NONE
hi PmenuThumb guifg=#00aa00 guibg=NONE

hi SpellBad guisp=#ff0000 gui=undercurl cterm=undercurl
hi SpellCap guifg=#00ff00 guisp=#00ff00 gui=undercurl cterm=underline
hi SpellLocal guifg=#00ffff guisp=#00ffff gui=undercurl cterm=underline
hi SpellRare guifg=#ff80ff guisp=#ff80ff gui=undercurl cterm=underline

hi QuickFixLine guifg=#ffffff guibg=#8b008b
hi Cursor guifg=#000000 guibg=#00ff00
hi ErrorMsg guifg=#ffffff guibg=NONE
hi Conceal guifg=NONE
hi FoldColumn guifg=#add8e6
hi Folded guifg=#aa0000 guibg=#191919 gui=bold
hi IncSearch guifg=#00ff00 gui=reverse cterm=reverse
hi MatchParen guifg=NONE guibg=#008b8b
hi ModeMsg guifg=NONE gui=bold
hi MoreMsg guifg=#2e8b57
hi Question guifg=#00ff00
hi Search guifg=#f8f8f8 guibg=#003500
hi SignColumn guifg=#008b8b
hi SpecialKey guifg=#00ffff
hi ToolbarButton guifg=NONE guibg=#999999 gui=bold
hi ToolbarLine guifg=NONE
hi Visual guifg=#ffff00 guibg=#777777
hi VisualNOS guifg=NONE gui=bold,underline,underline
hi WarningMsg guifg=#ff0000 guibg=NONE
hi WildMenu guifg=#000000 guibg=#ffff00 gui=bold
hi debugBreakpoint guifg=#00008b guibg=#ff0000
hi debugPC guifg=#00008b guibg=#0000ff
hi Directory guifg=#00ffff
hi Title guifg=#ff80ff
hi Ignore guifg=#333333
hi PreProc guifg=#900000 
hi Todo guifg=#ffff00 guibg=#000000 
hi Underlined guifg=#80a0ff gui=underline cterm=underline
hi DiffAdd guifg=#ffffff guibg=#5f875f
hi DiffChange guifg=#ffffff guibg=#5f87af
hi DiffText guifg=#000000 guibg=#c6c6c6
hi DiffDelete guifg=#ffffff guibg=#af5faf
