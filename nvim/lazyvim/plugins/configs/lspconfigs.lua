local M = {}

M.setup = function()
	local ok, lsp = pcall(require, "lspconfig")
	if not ok then
		return
	end

	local root_dir = lsp.util.root_pattern("go.mod", ".golangci.yaml", "go.work", ".git")
	local file_types = { "go", "gomod", "gowork" }

	lsp.gopls.setup({
		cmd = { "gopls", "serve" },
		filetypes = file_types,
		root_dir = root_dir,
		settings = {
			gopls = {
				-- local = "go-common",
				gofumpt = true,
				codelenses = {
					upgrade_dependency = true,
					gc_details = true,
					generate = false,
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
					assignVariableTypes = true,
					compositeLiteralFields = true,
					compositeLiteralTypes = true,
					constantValues = true,
					functionTypeParameters = true,
					parameterNames = true,
					rangeVariableTypes = true,
				},
				staticcheck = false,
				hoverKind = "NoDocumentation", -- SynopsisDocumentation
			},
		},
	})

	lsp.ruff_lsp.setup({})
	lsp.rust_analyzer.setup({
		inlayHint = {
			dynamicRegistration = true,
			resolveSupport = {
				properties = {},
			},
		},
	})
	lsp.vls.setup({})
	--lsp.golangci_lint_ls.setup {}
	--lsp.diagnosticls.setup {}
	--lsp.sourcery.setup {}
	lsp.golangci_lint_ls.setup({
		filetypes = file_types,
		cmd = { "golangci-lint-langserver" },
		root_dir = root_dir,
		init_options = {
			command = { "golangci-lint", "run", "--out-format", "json" },
			-- command = { "golangci-lint", "run" },
		},
	})
end

return M
