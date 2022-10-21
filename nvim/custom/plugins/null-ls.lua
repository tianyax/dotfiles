local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {

   -- golang
   --b.formatting.gofumpt,
   --b.formatting.goimports,
   --b.formatting.golines,
   --b.diagnostics.golangci_lint,
   --b.diagnostics.revive,
   b.code_actions.refactoring.with { filetypes = { "go", "python" } },
   b.code_actions.gitsigns,

   -- python
   b.formatting.isort,
   b.formatting.black,
   b.diagnostics.pylint.with { method = null_ls.methods.DIAGNOSTICS_ON_SAVE },
   b.diagnostics.mypy,

   b.formatting.stylua,

   -- semgrep
   --b.diagnostics.semgrep.with { filetypes = { "go", "python", "rust" } },
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = false,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.format()"
         end
      end,
   }
end

return M
