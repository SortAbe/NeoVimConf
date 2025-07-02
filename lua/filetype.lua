vim.api.nvim_create_autocmd({ "BufRead", "BufNew" }, {
	callback = function()
		if vim.api.nvim_buf_get_option(0, "filetype") == "sh" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 4
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "python" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 0
			Set = vim.opt
			Let = vim.g
			Set.shiftwidth = 0
			Let.pyindent_open_paren = Set.shiftwidth
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "cpp" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 3
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "php" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 4
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "html" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "css" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "java" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "javascript" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "sql" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "awk" then
			vim.opt.expandtab = true
			vim.opt.shiftwidth = 2
		elseif vim.api.nvim_buf_get_option(0, "filetype") == "lua" then
			vim.opt.expandtab = false
			vim.opt.shiftwidth = 4
			vim.opt.tabstop = 4
		end
	end,
})
