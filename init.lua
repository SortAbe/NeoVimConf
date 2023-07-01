vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = false
vim.o.spr = true

vim.o.showcmd = true
vim.o.ignorecase = true
vim.o.incsearch = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.o.noexpandtab = true
vim.opt.shiftwidth = 4
vim.opt.expandtab = false 
vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd "set backspace=indent,eol,start"
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.virtualedit = "onemore"
vim.o.laststatus = 0
vim.opt.mouse = ""
require("clip")

--Theme
vim.o.termguicolors = true
vim.cmd "colorscheme myown"
vim.o.fillchars='eob: '

--Return cursor shape upon exit
local group = vim.api.nvim_create_augroup("ReturnCursor", {clear = true})
vim.api.nvim_create_autocmd("VimLeave", {command = "set guicursor=a:ver20-blinkon700-blinkoff300", group = group})

--Remeber folds
local enter = vim.api.nvim_create_augroup("Enter", {clear = true})
vim.api.nvim_create_autocmd("BufEnter", {pattern = "?*", command = "silent! loadview"})
local leave = vim.api.nvim_create_augroup("Leave", {clear = true})
vim.api.nvim_create_autocmd("BufLeave", {pattern = "?*", command = "mkview", group = leave})

--Tree
require("tree")
require("treeMaping")

--Telescope
require("tele")

--IDE
require 'colorizer'.setup()
require("plugins")
require("java_coc")
require("commands")
vim.o.signcolumn= "number"
