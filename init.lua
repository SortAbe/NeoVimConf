vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = false
vim.o.spr = true

vim.o.showcmd = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd "set backspace=indent,eol,start"
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.virtualedit = "onemore"
vim.o.laststatus = 0
vim.opt.mouse = ""

--Theme
vim.o.termguicolors = true
vim.cmd "colorscheme myown"
vim.o.fillchars='eob: '

--Tree
require("tree")
require("treeMaping")

--Telescope
require("tele")

--IDE
require("clip")
require 'colorizer'.setup()
require("plugins")
require("java_coc")
require("commands")
require("buff")
vim.o.signcolumn= "number"
vim.keymap.set("n", "<A-j>", ":bnext<CR>", {silent = true})
vim.keymap.set("n", "<A-k>", ":bprev<CR>", {silent = true})

vim.opt.expandtab = false 
vim.opt.tabstop = 4

--Remeber folds
vim.api.nvim_create_autocmd("BufEnter", {pattern = "*.py*", command = "set noet"})
local enter = vim.api.nvim_create_augroup("Enter", {clear = true})
vim.api.nvim_create_autocmd({"BufEnter","BufWinEnter"}, {pattern = "*.*", command = "silent! loadview", group = "Enter"})
local leave = vim.api.nvim_create_augroup("Leave", {clear = true})
vim.api.nvim_create_autocmd({"BufLeave","BufWinLeave"}, {pattern = "*.*", command = "mkview", group = "Leave"})

--Return cursor shape upon exit
local group = vim.api.nvim_create_augroup("ReturnCursor", {clear = true})
vim.api.nvim_create_autocmd("VimLeave", {command = "set guicursor=a:ver20-blinkon700-blinkoff300", group = group})

