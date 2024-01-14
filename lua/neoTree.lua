local highlights = require("neo-tree.ui.highlights")

require("neo-tree").setup({
filesystem = {
  components = {
	icon = function(config, node, state)
	  local icon = config.default
	  local padding = config.padding
	  local highlight = config.highlight

	  if node.type == "directory" then
		highlight = highlights.DIRECTORY_ICON
		if node:is_expanded() then
		  icon = config.folder_open
		else
		  icon = config.folder_closed
		end
	  elseif node.type == "file" then
		local success, web_devicons = pcall(require, "nvim-web-devicons")
		if success then
		  local devicon, hl = web_devicons.get_icon(node.name, node.ext)
		  icon = devicon
		  highlight = hl
		end
	  end

	  return {
		text = icon,
		highlight = highlight,
	  }
	end,
}
}
}
)
