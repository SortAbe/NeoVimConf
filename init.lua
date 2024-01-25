--Telescope
require("tele")

--Navigation NeoTree
require("neoTree")

--StatusLine lualine
require("line")

--Plugins
require("buff")
require("plugins")
require("java_coc")
require 'colorizer'.setup()

--Custom
require("clip")
require("commands")
require("keymap")

--Theme
vim.cmd "colorscheme cherry_rainbow"

--Tree
require("tree")
require("treeMaping")

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "number"
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

--Undo file
vim.o.undofile = true
vim.opt.undodir = os.getenv( "HOME" ) .. '/.nvim/undodir'

vim.o.ruler = false
vim.o.spr = true

vim.o.showcmd = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true

vim.o.wrap = false
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd "set backspace=indent,eol,start"

vim.o.autoindent = true
vim.o.smartindent = true --when programming a new line autoindents

vim.o.virtualedit = "onemore" --Allows cursor to move past the last char in line
vim.opt.mouse = ""


vim.o.termguicolors = true
vim.o.fillchars='eob: '
vim.o.shortmess='S'

vim.opt.expandtab = false 
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.o.listchars = 'trail:-,nbsp:+,tab:▏ ,eol:↴'
vim.opt.list = true

vim.opt.spelllang = 'en_us'
vim.opt.spell = true

--Remember folds
local enter = vim.api.nvim_create_augroup("Enter", {clear = true})
vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {pattern = "*.*", command = "silent! loadview", group = "Enter"})
local leave = vim.api.nvim_create_augroup("Leave", {clear = true})
vim.api.nvim_create_autocmd({"BufLeave","BufWinLeave"}, {pattern = "*.*", command = "mkview", group = "Leave"})

--Return cursor shape upon exit
local group = vim.api.nvim_create_augroup("ReturnCursor", {clear = true})
vim.api.nvim_create_autocmd("VimLeave", {command = "set guicursor=a:ver20-blinkon700-blinkoff300", group = group})

--Python
vim.api.nvim_create_autocmd("BufEnter", {pattern = "*.py*", command = "set noet"})
vim.cmd "let g:python3_host_prog = \'/usr/bin/python3\'"
vim.opt.shortmess = "F"
