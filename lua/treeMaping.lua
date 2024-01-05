--Java
vim.api.nvim_set_hl(0, "@type.qualifier.java", { link = "Typedef" })
vim.api.nvim_set_hl(0, "@type.builtin.java", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "@punctuation.bracket.java", { link = "Special" })

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
vim.api.nvim_set_hl(0, "@variable.builtin.javascript", { link = "Type" })
vim.api.nvim_set_hl(0, "@property.javascript", { link = "StorageClass" })
