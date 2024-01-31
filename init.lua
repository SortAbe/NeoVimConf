require('plugins') --Packer
require('tele') --Telescope
require('fileEx') --Navigation NeoTree
require('statusline') --StatusLine lualine
require('tabs') --Buffer line
require('completion') --CMP
require('lsp_config') --Mason and lsp_config
require('colorizer').setup() --Colorizer

vim.cmd 'colorscheme cherry_rainbow' --Theme, needs to run before treeSitter below
require('tree') --TreeSitter configuration
require('mapping') --TreeSitter mapping

--Custom
require('clip') --WSL clipboard integration
require('commands') --Commands
require('keymap') --Keymaps

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = 'number'
vim.o.cursorline = true --error gutter
vim.o.cursorlineopt = 'number' --merge with number line
--Undo file
vim.o.undofile = true
vim.opt.undodir = os.getenv( 'HOME' ) .. '/.nvim/undodir'

vim.o.ruler = false --Position counter, disabled because custom statusline
vim.o.spr = true

vim.o.showcmd = true
vim.o.ignorecase = true
vim.o.smartcase = true --Match case only with upper case
vim.o.incsearch = true
vim.o.pumheight = 8

vim.o.wrap = false
vim.cmd 'set whichwrap+=<,>,[,],h,l'
vim.cmd 'set backspace=indent,eol,start'

vim.o.autoindent = true
vim.o.smartindent = true --when programming a new line autoindents

vim.o.virtualedit = 'onemore' --Allows cursor to move past the last char in line
vim.opt.mouse = ''


vim.o.termguicolors = true
vim.o.fillchars = 'eob: '
vim.opt.showmode = false
vim.o.shortmess = 'S'
vim.opt.shortmess:append('F')
vim.opt.shortmess:append('a')
vim.opt.shortmess:append('W')
vim.opt.shortmess:append('l')

vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.o.listchars = 'trail:-,nbsp:+,tab:▏ ,eol:↴' --White space hinting
vim.opt.list = true

vim.opt.spell = true
vim.opt.spelllang = 'en_us' --Spelling

vim.o.completeopt = 'menuone,noinsert' --pop menu even with one option and do not insert

--Remember folds
local enter = vim.api.nvim_create_augroup('Enter', {clear = true})
vim.api.nvim_create_autocmd({'BufEnter','BufWinEnter'}, {pattern = '*.*', command = 'silent! loadview', group = 'Enter'})
local leave = vim.api.nvim_create_augroup('Leave', {clear = true})
vim.api.nvim_create_autocmd({'BufLeave','BufWinLeave'}, {pattern = '*.*', command = 'mkview', group = 'Leave'})

--Return cursor shape upon exit
local group = vim.api.nvim_create_augroup('ReturnCursor', {clear = true})
vim.api.nvim_create_autocmd('VimLeave', {command = 'set guicursor=a:ver20-blinkon700-blinkoff300', group = group})

--Python
vim.cmd 'let g:python3_host_prog = \'/usr/bin/python3\''
vim.api.nvim_create_autocmd('BufEnter', {pattern = {'*.py*', '*.rs*'}, command = 'set noet'}) --force noet
