local M = {}

M.setup_lsp = function()
   local ok, lsp = pcall(require, "lspconfig")

   if not ok then
      return
   end

   local configs = require 'lspconfig/configs'

   lsp.rust_analyzer.setup {}
   --lsp.golangci_lint_ls.setup {}
   lsp.gopls.setup {}
   --lsp.diagnosticls.setup {}
   lsp.pyright.setup {}
   lsp.sourcery.setup {}

   if not configs.golangcilsp then
       configs.golangcilsp = {
           default_config = {
               cmd = { 'golangci-lint-langserver' },
               root_dir = lsp.util.root_pattern('.git', 'go.mod'),
               init_options = {
                   command = { "golangci-lint", "run", "--out-format", "json" };
               }
           };
       }
   end

   lsp.golangci_lint_ls.setup {
       filetypes = { 'go', 'gomod' }
   }
end

return M
