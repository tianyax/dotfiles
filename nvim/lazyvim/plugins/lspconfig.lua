return {
	{
		"neovim/nvim-lspconfig",
		ft = { "rust", "go", "python", "zig" },
		opts = {
			servers = {
				bacon_ls = {
					enabled = false, --diagnostics == "bacon-ls",
				},
				rust_analyzer = {
					enabled = true,
					keys = {
						{ "K", "<cmd>RustHoverActions<cr>", desc = "Hover Actions (Rust)" },
						{ "<leader>cR", "<cmd>RustCodeAction<cr>", desc = "Code Action (Rust)" },
						{ "<leader>dr", "<cmd>RustDebuggables<cr>", desc = "Run Debuggables (Rust)" },
					},
					settings = {
						["rust-analyzer"] = {
							cargo = {
								loadOutDirsFromCheck = true,
								runBuildScripts = true,
							},
							inlayHints = {
								maxLength = 99,
								closingBraceHints = {
									enable = false,
								},
								typeHints = {
									hideNamedConstructor = true,
								},
								rangeExclusiveHints = {
									enable = true,
								},
								lifetimeElisionHints = {
									useParameterNames = true,
									enable = "skip_trivial",
								},
								closureReturnTypeHints = {
									enable = "always",
								},
							},
							diagnostics = {
								enable = true,
							},
							import = {
								preferPrelude = true,
							},
							procMacro = {
								enable = true,
								attributes = {
									enable = true,
								},
							},
							checkOnSave = {
								command = "clippy",
							},
						},
					},
				},
				golangci_lint_ls = {
					cmd = { "golangci-lint-langserver" },
					filetypes = { "go", "gomod", "gowork" },
					init_options = {
						command = {
							"golangci-lint",
							"run",
							"--output.json.path",
							"stdout",
							"--show-stats=false",
							"--issues-exit-code=1",
						},
					},
				},
				gopls = {
					cmd = { "gopls", "serve" },
					filetypes = { "go", "gomod", "gowork" },
					settings = {
						gopls = {
							gofumpt = true,
							codelenses = {
								upgrade_dependency = true,
								gc_details = true,
								generate = true,
								run_govulncheck = true,
								vendor = false,
							},
							analyses = { -- golangci-lint contains rules
								useany = true,
								-- shadow = true,
								-- unusedparams = true,
								-- unusedwrite = true,
								-- fieldalignment = true,
								-- unusedvariable = true,
								-- nilness = true,
							},
							hints = {
								assignvariabletypes = true,
								compositeliteralfields = true,
								compositeliteraltypes = true,
								constantvalues = true,
								functiontypeparameters = true,
								parameternames = true,
								rangevariabletypes = true,
							},
							staticcheck = false,
							-- hoverkind = "nodocumentation", -- synopsisdocumentation
							usePlaceholders = true,
							completeUnimported = true,
							directoryFilters = { "-.git", "-.vscode", "-.idea" },
							semanticTokens = true,
						},
					},
				},
			},
		},
	},
}
