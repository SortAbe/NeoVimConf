vim.opt.termguicolors = true
vim.cmd("hi clear")

-- require("map")

--Background
vim.api.nvim_set_hl(0, "Normal", {fg = "NONE", bg = "#151515"})

--Language
vim.api.nvim_set_hl(0, "Type", {fg = "#8D81C2", gui=bold })
vim.api.nvim_set_hl(0, "Keyword", {fg = "#4465B4" })
vim.api.nvim_set_hl(0, "PreProc", {fg = "#5FD75F" })

vim.api.nvim_set_hl(0, "Variable", {fg = "#DDDDDD" })
vim.api.nvim_set_hl(0, "Boolean", {fg = "#FF0000" })
vim.api.nvim_set_hl(0, "Number", {fg = "#FF0000" })
vim.api.nvim_set_hl(0, "String", {fg = "#4EA006" })
vim.api.nvim_set_hl(0, "Constant", {fg = "#4A7006" })

vim.api.nvim_set_hl(0, "Comment", {fg = "#777777", bg = "NONE" })

vim.api.nvim_set_hl(0, "Function", {fg = "#75507B" })
vim.api.nvim_set_hl(0, "Macro", {fg = "#A9507B" })
vim.api.nvim_set_hl(0, "Special", {fg = "#00DDDD" })
vim.api.nvim_set_hl(0, "Parameter", {fg = "#82AAFF" })
vim.api.nvim_set_hl(0, "Delimiter", {fg = "#FFA500" })

vim.api.nvim_set_hl(0, "Statement", {fg = "#D35675", gui=bold })
vim.api.nvim_set_hl(0, "Identifier", {fg = "#FF80FF" })
vim.api.nvim_set_hl(0, "Typedef", {fg = "#50CCCC", gui=bold })
vim.api.nvim_set_hl(0, "SpecialComment", {fg = "#00FF00" })

--HTML
vim.api.nvim_set_hl(0, "Tag", {fg = "#5E409D" })
vim.api.nvim_set_hl(0, "StorageClass", {fg = "#CE5D97", gui=bold })
vim.api.nvim_set_hl(0, "Title", {fg = "#FF80FF" })
--End Of Language

-- require("meta")
