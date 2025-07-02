return{
	filetypes = { "php" },
	workspace_required = false,
	root_markers = {
		"index.php",
		"index.html",
		".htaccess",
	},
	cmd = { "phpactor", "language-server" },
}
