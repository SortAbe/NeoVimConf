require("luasnip.loaders.from_vscode").lazy_load()
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")

local icons = {
	Text = "",
	Function = "",
	Field = "",
	Method = "",
	Property = "",
	Snippet = "󰆐",
	Variable = "󰓹",
	Class = "󰠱",
	Keyword = "󰌆",
}

cmp.setup({
	preselet = cmp.PreselectMode.Item,
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	window = {
		completion = cmp.config.window.bordered({
			border = "single",
			winhighlight = "Normal:Pmenu,FloatBorder:PmenuThumb,CursorLine:PmenuSel",
		}),
		documentation = cmp.config.window.bordered({
			border = "single",
			winhighlight = "Normal:Pmenu,FloatBorder:PmenuThumb,CursorLine:PmenuSel",
		}),
	},
	formatting = {
		format = function(_, vim_item)
			vim_item.kind = (icons[vim_item.kind] or "") .. " " .. vim_item.kind
			return vim_item
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<C-k>"] = cmp.mapping.scroll_docs(-4),
		["<C-j>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources(
		{ { name = "nvim_lsp" }, { name = "luasnip" }, { name = "buffer" } },
		{ { name = "path" } }
	),
})
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- Set configuration for specific filetype.
--cmp.setup.filetype('gitcommit', {
--	sources = cmp.config.sources({ { name = 'git' }, -- You can specify the `git` source if [you were installed it](https://github.com/petertriho/cmp-git).
--	}, { { name = 'buffer' }, })
--})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
--cmp.setup.cmdline({ '/', '?' }, {
--	mapping = cmp.mapping.preset.cmdline(),
--	sources = {
--	  { name = 'buffer' }
--	}
--})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindText", { link = "Constant" })
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { link = "Function" })
vim.api.nvim_set_hl(0, "CmpItemKindFunction", { link = "Function" })
vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { link = "Keyword" })
vim.api.nvim_set_hl(0, "CmpItemKindField", { link = "Property" })
vim.api.nvim_set_hl(0, "CmpItemKindVariable", { link = "Variable" })
vim.api.nvim_set_hl(0, "CmpItemKindClass", { link = "StorageClass" })
vim.api.nvim_set_hl(0, "CmpItemKindInterface", { link = "Property" })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { link = "Number" })
vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { link = "Keyword" })
vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { link = "SpecialKey" })
vim.api.nvim_set_hl(0, "CmpItemKindFile", { link = "Property" })
vim.api.nvim_set_hl(0, "CmpItemKindFolder", { link = "Directory" })
