return { "nvim-treesitter/nvim-treesitter", config = function()
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"awk",
		"bash",
		"c",
		"cmake",
		"comment",
		"cpp",
		"css",
		"diff",
		"disassembly",
		"dot",
		"query",
		"java",
		"javascript",
		"json",
		"html",
		"http",
		"lua",
		"make",
		"objdump",
		"python",
		"regex",
		"rust",
		"sql",
		"ssh_config",
		"toml",
		"vim",
		"vimdoc",
		"yaml",
	},
	sync_install = true,
	auto_install = false,
	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 100 * 1024 -- 100 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
		additional_vim_regex_highlighting = false,
	},
})
end}
