vim.lsp.config["sqls"] = {
	filetypes = {
		"sql",
		"mysql",
	},
	root_markers = {
		".git/",
		"*.sql",
		"config.yml",
	},
	workspace_required = false,
	cmd = { "sqls" },
	settings = {
		sqls = {
			connections = {
				{
					driver = "mysql",
					dataSourceName = "abe:Evangelion@tcp(localhost:3306)/University",
				},
				{
					driver = "postgresql",
					dataSourceName = "host=127.0.0.1 port=15432 user=postgres password=mysecretpassword1234 dbname=dvdrental sslmode=disable",
				},
			},
		},
	},
}
