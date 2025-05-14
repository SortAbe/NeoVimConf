local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
local opts = require("lazy_opts")
vim.cmd("colorscheme cherry_rainbow") --Theme, needs to run before treeSitter below
require("lazy").setup("plugins", opts)

--Overwritten
vim.opt.expandtab = false
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2

vim.o.autoindent = true
vim.o.smartindent = true --when programming a new line autoindents

--Custom
require("clip") --WSL clipboard integration
require("keymap") --Keymaps
require("mapping") --TreeSitter mapping
--require("lsp_conf")

vim.api.nvim_create_autocmd("CmdlineEnter", {
	callback = function(ev)
		require("commands") --Commands
	end,
})


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
vim.o.incsearch = true
vim.o.pumheight = 8
vim.o.updatetime = 250
vim.o.scrolloff = 3 --Scroll at line from end

vim.o.wrap = false
vim.cmd("set whichwrap+=<,>,[,],h,l")
vim.cmd("set backspace=indent,eol,start")


vim.o.virtualedit = "onemore" --Allows cursor to move past the last char in line
vim.opt.mouse = ""

vim.o.termguicolors = true
vim.o.fillchars = "eob: "
vim.opt.showmode = false
vim.o.shortmess = "S"
vim.opt.shortmess:append("F")
vim.opt.shortmess:append("a")
vim.opt.shortmess:append("W")
vim.opt.shortmess:append("l")

--vim.o.listchars = 'trail:-,nbsp:+,tab:▏ ,eol:↴' --White space hinting
vim.o.listchars = "trail:-,nbsp:+,tab:▏ " --White space hinting
vim.opt.list = true

vim.opt.spell = true
vim.opt.spelllang = "en_us" --Spelling

vim.o.completeopt = "menuone,noinsert" --pop menu even with one option and do not insert
vim.o.foldmethod = "manual"

--Remember folds
local enter = vim.api.nvim_create_augroup("Enter", { clear = true })
vim.api.nvim_create_autocmd(
	{ "BufEnter", "BufWinEnter" },
	{ pattern = "*.*", command = "silent! loadview", group = "Enter" }
)

--vim.api.nvim_create_autocmd("BufEnter", { pattern = "*.sh*", command = "set et", group = "Enter" }) --force noet
--vim.api.nvim_create_autocmd("BufEnter", { pattern = "*.*", command = "LspStart", group = "Enter" }) --force noet

local leave = vim.api.nvim_create_augroup("Leave", { clear = true })
vim.api.nvim_create_autocmd({ "BufLeave", "BufWinLeave" }, { pattern = "*.*", command = "mkview", group = "Leave" })

--Return cursor shape upon exit
local group = vim.api.nvim_create_augroup("ReturnCursor", { clear = true })
vim.api.nvim_create_autocmd("VimLeave", { command = "set guicursor=a:ver20-blinkon700-blinkoff300", group = group })

--Disable spell checking in terminal.
--local Term = vim.api.nvim_create_augroup("Term", { clear = true })
--vim.api.nvim_create_autocmd("TermOpen", { command = "setlocal nospell nonu nornu", group = Term })

--Python
vim.cmd("let g:python3_host_prog = '/usr/bin/python3'")

local _border = "single"
vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
	border = _border,
})
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
	border = _border,
})

vim.lsp.enable("arduino_language_server")
vim.lsp.enable("bashls")
vim.lsp.enable("clangd")
vim.lsp.enable("cssls")
vim.lsp.enable("denols")
vim.lsp.enable("efm")
vim.lsp.enable("html")
vim.lsp.enable("phpactor")
vim.lsp.enable("pyright")
vim.lsp.enable("rust-analyzer")
vim.lsp.enable("sqls")
vim.diagnostic.config({
	virtual_text = false,
	float = { border = "rounded" },
	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.INFO] = "󰙎",
			[vim.diagnostic.severity.HINT] = "",
		},
	},
})
local Hover = vim.api.nvim_create_augroup("Hover", { clear = true })
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	pattern = "*.*",
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
	group = "Hover",
})
