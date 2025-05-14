--Update all!
vim.api.nvim_create_user_command("Update", function(opts)
		vim.cmd("TSUpdateSync")
		vim.cmd("MasonUpdate")
		vim.cmd("Lazy sync")
end, { nargs = 0 })

--Copy entire buffer into system clipboard
vim.api.nvim_create_user_command("Copy", function(opts)
	vim.cmd('silent! ggVG\"*y')
end, { nargs = 0 })

--Toggle spelling
vim.api.nvim_create_user_command("Spell", function(opts)
	if vim.o.spell then
		vim.cmd("set nospell")
	else
		vim.cmd("set spell")
	end
end, { nargs = 0 })

--Wrap toggle
vim.api.nvim_create_user_command("Wrap", function(opts)
	if vim.o.wrap then
		vim.cmd("set nowrap")
	else
		vim.cmd("set wrap")
	end
end, { nargs = 0 })

--Clear system cache
vim.api.nvim_create_user_command("Clear", function(opts)
	vim.cmd("silent! !rm -rf ~/.local/state/nvim/view/*")
	vim.api.nvim_input("<A-l>")
end, { nargs = 0 })

--Toggle diagnostic type
local Toggled = true
vim.api.nvim_create_user_command("Diag", function(opts)
	if Toggled then
		vim.opt.eventignore = "CursorHoldI,CursorHold"
		vim.diagnostic.config({ virtual_text = true })
		Toggled = false
	else
		vim.opt.eventignore = ""
		vim.diagnostic.config({ virtual_text = false })
		Toggled = true
	end
end, { nargs = 0 })


--Formatter
local conform = require("conform")
vim.api.nvim_create_user_command("Format", function(opts)
	if not conform.format() then
		vim.lsp.buf.format()
	end
	print("Formatted!")
end, { nargs = 0 })


--Background
local transparent = true
vim.api.nvim_create_user_command("Trans", function(opts)
	if transparent then
		vim.api.nvim_set_hl(0, "Normal", { fg=NONE,  bg="#090908" })
		transparent = false
	else
		vim.api.nvim_set_hl(0, "Normal", { fg=NONE,  bg=NONE })
		transparent = true
	end
end, { nargs = 0 })
