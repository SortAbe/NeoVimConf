vim.opt.termguicolors = true
vim.cmd("hi clear")


--Background
vim.api.nvim_set_hl(0, "Normal", {fg = "NONE", bg = "#111111"})

--Language
vim.api.nvim_set_hl(0, "Type", {fg = "#7E9CD8", bold = true})
vim.api.nvim_set_hl(0, "Keyword", {fg = "#D27E99"})
vim.api.nvim_set_hl(0, "PreProc", {fg = "#98BB6C"})

vim.api.nvim_set_hl(0, "Variable", {fg = "#E8E2C5"})
vim.api.nvim_set_hl(0, "Boolean", {fg = "#E82424"})
vim.api.nvim_set_hl(0, "Number", {fg = "#E82424"})
vim.api.nvim_set_hl(0, "String", {fg = "#98BB6C"})
vim.api.nvim_set_hl(0, "Constant", {fg = "#76946A"})

vim.api.nvim_set_hl(0, "Comment", {fg = "#777777", bg = "NONE"})

vim.api.nvim_set_hl(0, "Function", {fg = "#957FB8"})
vim.api.nvim_set_hl(0, "Macro", {fg = "#D27E99"})
vim.api.nvim_set_hl(0, "Special", {fg = "#FF5D62"})
vim.api.nvim_set_hl(0, "Parameter", {fg = "#A3D4D5"})
vim.api.nvim_set_hl(0, "Delimiter", {fg = "#FF9E3B"})

vim.api.nvim_set_hl(0, "Statement", {fg = "#E46876", bold = true})
vim.api.nvim_set_hl(0, "Identifier", {fg = "#FFA066"})
vim.api.nvim_set_hl(0, "Typedef", {fg = "#7E9CD8", bold = true})
vim.api.nvim_set_hl(0, "SpecialComment", {fg = "#98BB6C"})

--HTML
vim.api.nvim_set_hl(0, "Tag", {fg = "#7FB4CA"})
vim.api.nvim_set_hl(0, "StorageClass", {fg = "#E46876", bold = true})
vim.api.nvim_set_hl(0, "Title", {fg = "#76946A"})
--End Of Language

