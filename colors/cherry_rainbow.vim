" Name:         cherry_rainbow

set background=dark
hi clear
let g:colors_name = 'cherry_rainbow'
let s:t_Co = &t_Co

"if (has('termguicolors') && &termguicolors) || has('gui_running')
"  let g:terminal_ansi_colors = ['#000000', '#cd0000', '#00cd00', '#cdcd00', '#0087ff', '#cd00cd', '#00cdcd', '#e5e5e5', '#7f7f7f', '#ff0000', '#00ff00', '#ffff00', '#5c5cff', '#ff00ff', '#00ffff', '#ffffff']
  " Nvim uses g:terminal_color_{0-15} instead
"  for i in range(g:terminal_ansi_colors->len())
"    let g:terminal_color_{i} = g:terminal_ansi_colors[i]
"  endfor
"endif

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
hi! link Keyword Statement
hi! link Label Statement
hi! link Macro PreProc
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
hi Normal guifg=NONE guibg=NONE gui=NONE cterm=NONE

hi Constant guifg=#4EA006 guibg=NONE gui=NONE cterm=NONE
hi Comment guifg=#777777 guibg=NONE gui=NONE cterm=NONE
hi Special guifg=#4465B4 guibg=NONE gui=NONE cterm=NONE
hi Statement guifg=#D35675  guibg=NONE gui=bold cterm=bold
hi Function guifg=#75507B guibg=NONE gui=bold cterm=bold
hi Identifier guifg=#ff80ff guibg=NONE gui=NONE cterm=NONE
hi Variable guifg=#ffffff guibg=NONE gui=NONE cterm=NONE
hi Type guifg=#8D81C2 guibg=NONE gui=bold cterm=bold
hi Typedef guifg=#4465B4  guibg=NONE gui=bold cterm=bold
hi StorageClass guifg=#4465B4 guibg=NONE gui=bold cterm=bold
hi Tag guifg=#4465B4 guibg=NONE gui=NONE cterm=NONE
hi Delimiter guifg=#ffa500 guibg=NONE gui=NONE cterm=NONE
hi SpecialComment guifg=#00ff00 guibg=NONE gui=NONE cterm=NONE
hi Number guifg=#62E0FF guibg=NONE gui=NONE cterm=NONE

hi LineNr guifg=#7A82A3 guibg=NONE gui=NONE cterm=NONE
hi CursorLineNr guifg=#00aa00 guibg=NONE gui=NONE cterm=NONE
hi Error guifg=#ff0000 guibg=#ffffff gui=reverse cterm=reverse
hi NonText guifg=#444444 guibg=NONE gui=NONE cterm=NONE

"Coc colors
hi CocErrorSign guifg=#ff0000 guibg=NONE gui=NONE cterm=NONE
hi CocWarningSign guifg=#ffff00 guibg=NONE gui=NONE cterm=NONE
hi CocInfoSign guifg=#00ff00 guibg=NONE gui=NONE cterm=NONE
hi CocHintSign guifg=#62E0FF guibg=NONE gui=NONE cterm=NONE

"Built in
hi ColorColumn guifg=NONE guibg=#8b0000 gui=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi EndOfBuffer guifg=#add8e6 guibg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=NONE guibg=NONE gui=bold cterm=bold
hi StatusLineNC guifg=NONE guibg=NONE gui=NONE cterm=NONE
hi TabLineSel guifg=#333333 guibg=#ffffff gui=bold cterm=bold
hi TabLine guifg=#333333 guibg=#d3d3d3 gui=NONE cterm=NONE
hi Pmenu guifg=#ffffff guibg=#4d4d4d gui=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel guifg=#000000 guibg=#bebebe gui=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=#ffffff gui=NONE cterm=NONE
hi QuickFixLine guifg=#ffffff guibg=#8b008b gui=NONE cterm=NONE
hi Cursor guifg=#000000 guibg=#00ff00 gui=NONE cterm=NONE
hi ErrorMsg guifg=#ffffff guibg=#ff0000 gui=NONE cterm=NONE
hi Conceal guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi FoldColumn guifg=#add8e6 guibg=NONE gui=NONE cterm=NONE
hi Folded guifg=#00ff00 guibg=#000000 gui=bold cterm=bold
hi IncSearch guifg=#00ff00 guibg=NONE gui=reverse cterm=reverse
hi MatchParen guifg=NONE guibg=#008b8b gui=NONE cterm=NONE
hi ModeMsg guifg=NONE guibg=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi MoreMsg guifg=#2e8b57 guibg=NONE gui=NONE cterm=NONE
hi Question guifg=#00ff00 guibg=NONE gui=NONE cterm=NONE
hi Search guifg=#000000 guibg=#62E0FF gui=NONE cterm=NONE
hi SignColumn guifg=#008b8b guibg=NONE gui=NONE cterm=NONE
hi SpecialKey guifg=#00ffff guibg=NONE gui=NONE cterm=NONE
hi ToolbarButton guifg=NONE guibg=#999999 gui=bold cterm=bold
hi ToolbarLine guifg=NONE guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Visual guifg=#ffff00 guibg=#777777 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE guibg=NONE gui=bold,underline ctermfg=NONE ctermbg=NONE cterm=bold,underline
hi WarningMsg guifg=#ff0000 guibg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#000000 guibg=#ffff00 gui=bold cterm=bold
hi debugBreakpoint guifg=#00008b guibg=#ff0000 gui=NONE cterm=NONE
hi debugPC guifg=#00008b guibg=#0000ff gui=NONE cterm=NONE
hi SpellBad guibg=NONE guisp=#ff0000 gui=undercurl cterm=undercurl
hi SpellCap guifg=#00ff00 guibg=NONE guisp=#00ff00 gui=undercurl cterm=underline
hi SpellLocal guifg=#00ffff guibg=NONE guisp=#00ffff gui=undercurl cterm=underline
hi SpellRare guifg=#ff80ff guibg=NONE guisp=#ff80ff gui=undercurl cterm=underline
hi Directory guifg=#00ffff guibg=NONE gui=NONE cterm=NONE
hi Title guifg=#ff80ff guibg=NONE gui=NONE cterm=NONE
hi Ignore guifg=#333333 guibg=NONE gui=NONE cterm=NONE
hi PreProc guifg=#ff0000  guibg=NONE gui=NONE cterm=NONE
hi Todo guifg=#ffff00 guibg=#0000ff gui=reverse cterm=reverse
hi Underlined guifg=#80a0ff guibg=NONE gui=underline cterm=underline
hi DiffAdd guifg=#ffffff guibg=#5f875f gui=NONE cterm=NONE
hi DiffChange guifg=#ffffff guibg=#5f87af gui=NONE cterm=NONE
hi DiffText guifg=#000000 guibg=#c6c6c6 gui=NONE cterm=NONE
hi DiffDelete guifg=#ffffff guibg=#af5faf gui=NONE cterm=NONE
