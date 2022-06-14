-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

local lsp = require "lspconfig"

lsp.rust_analyzer.setup {}
lsp.pyright.setup {}
lsp.diagnosticls.setup {}
lsp.golangci_lint_ls.setup {}
lsp.gopls.setup {}
lsp.sourcery.setup {}

require("leap").set_default_keymaps()

-- Run gofumpt + goimport on save
vim.api.nvim_exec([[ autocmd ColorScheme * lua require('leap').init_highlight(true) ]], false)
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
--vim.api.nvim_exec([[ autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200) ]], false)
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre", "BufWritePost" }, {
   pattern = { "*.rs", "*.python", "*.lua", "*.v" },
   callback = function()
      vim.lsp.buf.formatting_sync(nil, 200)
   end,
})
