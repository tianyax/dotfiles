-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

local opt = vim.opt
opt.relativenumber = false
opt.listchars = {
  tab = "→ ",
  lead = "·",
  trail = "•",
  nbsp = "␣",
}
opt.statuscolumn = ""
opt.timeoutlen = 100
opt.signcolumn = "yes"
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4
opt.smartindent = true
opt.smarttab = true
opt.mouse = "v"
opt.number = false
opt.numberwidth = 1
opt.cursorcolumn = true
opt.cursorline = true
opt.expandtab = false
opt.list = false
-- opt.lazyredraw = true
opt.termguicolors = true

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
