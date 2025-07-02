return {
	cmd = { "clangd", "-j", "8", "--background-index", "--offset-encoding=utf-8" },
	detached = true,
	filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
	root_markers = {
		".clangd",
		".clang-tidy",
		".clang-format",
		"compile_commands.json",
		"compile_flags.txt",
		"configure.ac", -- AutoTools
		".git",
	},
	settings = {
		clangd = {
			InlayHints = {
				Enabled = "yes",
				ParameterNames = "yes",
				BlockEnd = "yes",
				Designators = "yes",
				DeducedTypes = "yes",
				DefaultArguments = "yes",
			},
			Completion = {
				AllScopes = "yes",
				ArgumentLists = "FullPlaceholders",
				HeaderInsertion = "IWYU",
				CodePatterns = "All",
			},
			CompileFlags = {
				Add = {
					"-xc++",
					"-Wall",
					"-std=c++17",
					"-I/usr/include/c++/11",
					"-I/usr/include/x86_64-linux-gnu/c++/11",
					"-I/usr/include",
				},
				Remove = { "-W*" },
				Compiler = "clang++",
				CompilationDatabase = nil,
			},
			Diagnostics = {
				ClangTidy = {
					Add = "modernize*",
				},
			},
		},
	},
	capabilities = {
		workspace = {
			semanticTokens = nil,
		},
		textDocument = {
			semanticTokens = nil,
			completion = {
				editsNearCursor = true,
			},
		},
		offsetEncoding = { "utf-8", "utf-16" },
	},
}
