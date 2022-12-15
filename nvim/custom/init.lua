-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

require("leap").set_default_keymaps()

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f08080 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#ffb366 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#00ced1 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- Run gofumpt + goimport on save
vim.api.nvim_exec([[ autocmd BufWritePre *.go :silent! lua require('go.format').goimport() ]], false)
vim.api.nvim_exec([[ autocmd ColorScheme * lua require('leap').init_highlight(true) ]], false)
--vim.api.nvim_exec([[ autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200) ]], false)
local autocmd = vim.api.nvim_create_autocmd

autocmd({ "BufWritePre", "BufWritePost" }, {
   pattern = { "*.rs", "*.python", "*.lua", "*.v" },
   callback = function()
      vim.lsp.buf.format(nil, 200)
   end,
})

-- override nvchad default config
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.mouse = "v"
vim.opt.number = false
vim.opt.numberwidth = 1
vim.opt.lazyredraw = true
