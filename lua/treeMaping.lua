--Java
vim.api.nvim_set_hl(0, "@type.builtin.java", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@punctuation.bracket.java", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@variable.java", { link = "Variable" })

--SQL
vim.api.nvim_set_hl(0, "@variable.sql", { link = "Constant" })
vim.api.nvim_set_hl(0, "@field.sql", { link = "StorageClass" })

--HTML
vim.api.nvim_set_hl(0, "@tag.html", { link = "Tag" })
vim.api.nvim_set_hl(0, "@tag.delimiter.html", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "@tag.attribute.html", { link = "StorageClass" })

--CSS
vim.api.nvim_set_hl(0, "@property.css", { link = "StorageClass" })

--JavaScript
vim.api.nvim_set_hl(0, "@type.builtin.javascript", { link = "Type" })
vim.api.nvim_set_hl(0, "@constructor.javascript", { link = "Type" })
vim.api.nvim_set_hl(0, "@property.javascript", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@variable.member.javascript", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@variable.javascript", { link = "Variable" })

--Python
vim.api.nvim_set_hl(0, "@string.python", { link = "@spell" })
vim.api.nvim_set_hl(0, "@string.python", { link = "String" })
vim.api.nvim_set_hl(0, "@constructor.python", { link = "Type" })
vim.api.nvim_set_hl(0, "@string.regexp.python", { link = "SpecialComment" })
vim.api.nvim_set_hl(0, "@variable.python", { link = "Variable" })
vim.api.nvim_set_hl(0, "@method.call.python", { link = "Function" })
vim.api.nvim_set_hl(0, "@field.python", { link = "Identifier" })
vim.api.nvim_set_hl(0, "@conditional.python", { link = "Statement" })
vim.api.nvim_set_hl(0, "@repeat.python", { link = "Statement" })

--All
vim.api.nvim_set_hl(0, "@include", { link = "Include" })
vim.api.nvim_set_hl(0, "@preproc", { link = "PreProc" })
