--Navigation
vim.keymap.set("n", "<A-j>", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<A-h>", ":tabNext<CR>", { silent = true })
vim.keymap.set("n", "<A-l>", ":noh | echo<CR>", { silent = true })
vim.keymap.set("n", "<A-k>", ":bprev<CR>", { silent = true })
vim.keymap.set("n", "<A-d>", ":bd<CR>", { silent = true })
vim.keymap.set("n", "<TAB>", "<C-W>w", { silent = true })

vim.keymap.set("v", "<A-c>", '"*y', { silent = true }) --Alt c to copy to system clipboard

vim.keymap.set("n", "<Space>x", ":Oil --float<CR>", { silent = true }) --File explore

vim.keymap.set("n", "<A-e>", ":Lspsaga rename<CR>", { silent = true }) --LSP
vim.keymap.set("n", "<A-a>", ":Lspsaga code_action<CR>", { silent = true }) --LSP
vim.keymap.set("n", "<A-o>", ":Lspsaga goto_definition<CR>", { silent = true }) --LSP

vim.keymap.set("n", "<A-n>", ":lua vim.diagnostic.goto_next()<CR>", { silent = true }) --LSP
vim.keymap.set("n", "<A-N>", ":lua vim.diagnostic.goto_prev()<CR>", { silent = true }) --LSP
vim.keymap.set("n", "<Space>u", ":e!<CR>", { silent = true }) --File explore
vim.keymap.set("n", "<Space>U", ":normal 1000u<CR>", { silent = true }) --File explore
vim.keymap.set("n", "<Space>R", ":normal 1000<C-R><CR>", { silent = true }) --File explore

--Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<Space>ff", builtin.find_files, {})
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fw", builtin.grep_string, {})
vim.keymap.set("n", "<Space>fh", builtin.oldfiles, {})
vim.keymap.set("n", "<Space>gf", builtin.git_files, {})
vim.keymap.set("n", "<Space>fb", builtin.buffers, {})
vim.keymap.set("n", "<Space>hh", builtin.help_tags, {})

--Tmux
vim.keymap.set("n", "<C-l>", ":TmuxNavigateRight<CR>", { silent = true })
vim.keymap.set("n", "<C-h>", ":TmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", ":TmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", ":TmuxNavigateUp<CR>", { silent = true })

--Folding
vim.keymap.set("n", "<A-f>", ":normal zfaf<CR>", { silent = true })
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.htm*" },
	callback = function()
		vim.keymap.set("n", "<A-f>", ":normal zfat<CR>", { silent = true })
	end,
})
