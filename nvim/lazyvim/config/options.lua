-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.mouse = "v"
vim.opt.number = false
vim.opt.numberwidth = 1
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.expandtab = false
vim.opt.list = false
-- vim.opt.lazyredraw = true
vim.opt.termguicolors = true

local g = vim.g
g.lazyvim_picker = "snacks"
g.lazyvim_rust_diagnostics = "bacon-ls"
g.loaded_node_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

g.gruvbox_material_better_performance = 1
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

--require("leap").set_default_keymaps()
--vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f08080 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent2 guifg=#ffb366 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent4 guifg=#00ced1 gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
--vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

if vim.g.neovide then
	require("config.neovide")
end
