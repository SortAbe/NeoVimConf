vim.cmd("colorscheme cherry_rainbow")

require("meta_colors/meta")
require("meta_colors/map")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
local opts = require("lazy_opts")
require("lazy").setup("plugins", opts)

--Overwritten
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.o.autoindent = true
vim.o.smartindent = true --when programming a new line autoindents

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "number"
vim.o.cursorline = true --error gutter
vim.o.cursorlineopt = "number" --merge with number line

--Undo file
vim.o.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"

vim.o.ruler = false --Position counter, disabled because custom statusline
vim.o.spr = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.o.showcmd = true
vim.o.ignorecase = true
vim.o.smartcase = true --Match case only with upper case
vim.o.pumheight = 8
vim.o.updatetime = 250
vim.o.scrolloff = 2 --Scroll at line from end
vim.o.incsearch = true
vim.o.wrapscan = false

vim.o.virtualedit = "onemore" --Allows cursor to move past the last char in line
vim.opt.mouse = ""

vim.o.wrap = false
vim.o.fillchars = "eob: "
vim.opt.showmode = false
-- vim.o.shortmess = "S" # Noice conflict
vim.opt.shortmess:append("F")
vim.opt.shortmess:append("a")
vim.opt.shortmess:append("W")
vim.opt.shortmess:append("l")

vim.o.listchars = "trail:-,nbsp:+,tab:▏ " --Space hinting
vim.opt.list = true

vim.opt.spell = true
vim.opt.spelllang = "en_us" --Spelling

vim.o.completeopt = "menuone,noinsert" --pop menu even with one option and do not insert
vim.o.foldmethod = "manual"

vim.cmd("set whichwrap+=<,>,[,]")
vim.cmd("set backspace=indent,eol,start")

--Custom
require("mapping")

vim.api.nvim_create_autocmd("CmdlineEnter", {
	callback = function(ev)
		require("commands") --Commands
	end,
})

--Remember folds
local enter = vim.api.nvim_create_augroup("Enter", { clear = true })
vim.api.nvim_create_autocmd(
	{ "BufEnter", "BufWinEnter" },
	{ pattern = "*.*", command = "silent! loadview", group = "Enter" }
)

local leave = vim.api.nvim_create_augroup("Leave", { clear = true })
vim.api.nvim_create_autocmd({ "BufLeave", "BufWinLeave" }, { pattern = "*.*", command = "mkview", group = "Leave" })

--Return cursor shape upon exit
local group = vim.api.nvim_create_augroup("ReturnCursor", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", { command = "set guicursor=a:ver20-blinkon700-blinkoff300", group = group })

--Python
vim.cmd("let g:python3_host_prog = '/usr/bin/python3'")

local _border = "single"
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = _border,
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = _border,
})

diag_show = true
local Hover = vim.api.nvim_create_augroup("Hover", { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	pattern = "*",
	callback = function()
		if diag_show then
			vim.diagnostic.show()
			vim.diagnostic.open_float(nil, { focus = false })
		else
			vim.diagnostic.hide()
		end
	end,
	group = "Hover",
})

local Hover = vim.api.nvim_create_augroup("Insert", { clear = true })
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
	pattern = "*",
	callback = function()
		diag_show = false
		vim.diagnostic.hide()
	end,
	group = "Insert",
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
	pattern = "*",
	callback = function()
		diag_show = true
		vim.diagnostic.show()
	end,
	group = "Insert",
})

vim.lsp.enable({
	"awkls",
	"arduino_language_server",
	"bashls",
	"clangd",
	"cssls",
	"denols",
	"html",
	"phpactor",
	"pyright",
	"rust-analyzer",
	"sqls",
})
vim.diagnostic.config({
	virtual_text = false,
	virtual_line = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		border = "rounded",
		source = true,
	},
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "󰔷",
			[vim.diagnostic.severity.INFO] = "",
			[vim.diagnostic.severity.HINT] = "󰌵",
		},
	},
	numhl = {
		[vim.diagnostic.severity.ERROR] = "ErrorMsg",
		[vim.diagnostic.severity.WARN] = "WarningMsg",
	},
})
require("keymap")
require("clip")
require("filetype")
