--Custom
vim.keymap.set("n", "<A-j>", ":bnext<CR>", {silent = true})
vim.keymap.set("n", "<A-l>", ":noh | echo<CR>", {silent = true})
vim.keymap.set("n", "<A-k>", ":bprev<CR>", {silent = true})
vim.keymap.set("n", "<A-d>", ":bd<CR>", {silent = true})
vim.keymap.set("v", "<A-c>", '"*y', {silent = true})
vim.keymap.set("n", "<A-f>", '$zf%', {silent = true})
vim.keymap.set('n', '<Space>t', ":Neotree<CR>", {silent = true})
vim.keymap.set('n', '<TAB>', "<C-W>w", {silent = true})

--Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Space>ff', builtin.find_files, {})
vim.keymap.set('n', '<Space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<Space>fw', builtin.grep_string, {})
vim.keymap.set('n', '<Space>fh', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>gf', builtin.git_files, {})
vim.keymap.set('n', '<Space>fb', builtin.buffers, {})
vim.keymap.set('n', '<Space>hh', builtin.help_tags, {})

--Tmux
vim.keymap.set("n", "<C-l>", "TmuxNavigationRight<CR>", {silent = true})
vim.keymap.set("n", "<C-h>", "TmuxNavigationLeft<CR>", {silent = true})
vim.keymap.set("n", "<C-j>", "TmuxNavigationDown<CR>", {silent = true})
vim.keymap.set("n", "<C-k>", "TmuxNavigationUp<CR>", {silent = true})
