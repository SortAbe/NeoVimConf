require("bufferline").setup{
    options = {
	mode = "buffers", -- set to "tabs" to only show tabpages instead
	themable = false, -- allows highlight groups to be overriden i.e. sets highlights as default
	numbers = "none",
	indicator = { style = 'none'},
	buffer_close_icon = 'x',
	modified_icon = '●',
	close_icon = 'X',
	left_trunc_marker = '|',
	right_trunc_marker = '\\',
	max_name_length = 18,
	max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
	truncate_names = true, -- whether or not tab names should be truncated
	tab_size = 18,
	diagnostics = false,
	diagnostics_update_in_insert = false,
	color_icons = true, -- whether or not to add the filetype icon highlights
	show_buffer_icons = true, -- disable filetype icons for buffers
	show_buffer_close_icons = false,
	show_close_icon = false,
	show_tab_indicators = true,
	show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
	persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
	move_wraps_at_ends = false, -- whether or not the move command "wraps" at the first or last position
	separator_style = "thin"
    }
}
