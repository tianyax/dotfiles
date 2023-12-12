local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())

require("go").setup({
	gofmt = "gofumpt",
	max_line_len = 99,
	comment_placeholder = "🤺",
	icons = { breakpoint = "⏸", currentpos = "▶" },
	verbose = false,
	lsp_cfg = {
		capabilities = capabilities,
	},
	lsp_gofumpt = true,
	lsp_on_attach = true,
	lsp_codelens = true,
	lsp_diag_hdlr = true,
	lsp_diag_virtual_text = { space = 0, prefix = "" },
	lsp_diag_signs = true,
	lsp_diag_update_in_insert = false,
	lsp_format_on_save = 1,
	lsp_document_formatting = true,
	lsp_keymaps = false,
	null_ls_document_formatting_disable = true,
	gopls_remote_auto = true,
	test_runner = "ginkgo",
	run_in_floaterm = true,
})
