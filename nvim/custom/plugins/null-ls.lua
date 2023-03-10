local null_ls = require "null-ls"
local b = null_ls.builtins

local sources = {
   --b.code_actions.gitsigns,
   --b.code_actions.ltrs,

   b.formatting.gofumpt,
   b.formatting.golines,
   b.formatting.ruff,
   b.formatting.stylua,
   b.formatting.rustfmt,

   --b.diagnostics.golangci_lint,
   --b.diagnostics.revive,
   b.diagnostics.ruff,
   b.diagnostics.ltrs,
}

local M = {}

M.setup = function()
   null_ls.setup {
      debug = false,
      sources = sources,
      -- format on save
      on_attach = function(client, bufnr)
         vim.api.nvim_create_autocmd("BufWritePre", {
            group = vim.api.nvim_create_augroup("LspFormatting", {}),
            buffer = bufnr,
            callback = function()
               vim.lsp.buf.format()
            end,
         })
      end,
   }
end

return M
