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

local g = vim.g
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

if g.neovide then
	g.neovide_refresh_rate = 150
	g.neovide_transparency = 0.75
	g.neovide_floating_blur_amount_x = 2.0
	g.neovide_floating_blur_amount_x = 2.0
	g.neovide_fullscreen = true
	g.neovide_floating_shadow = true
	g.neovide_floating_z_height = 10
	g.neovide_light_angle_degrees = 45
	g.neovide_light_radius = 5
	-- g.neovide_cursor_vfx_mode = "railgun"
	g.neovide_cursor_vfx_particle_phase = 1.5
	g.neovide_cursor_vfx_particle_curl = 1.0
	-- g.colorscheme = "highlite"
	g.neovide_cursor_antialiasing = true
	g.neovide_confirm_quit = true
	g.neovide_profiler = false
	g.neovide_input_use_logo = true
	g.neovide_hide_mouse_when_typing = false
	g.neovide_input_macos_alt_is_meta = true
	g.neovide_touch_deadzone = 1.0
	g.neovide_cursor_animation_length = 0.10
	-- g.neovide_cursor_trail_size = 0.8
	g.neovide_cursor_antialiasing = true
	g.neovide_cursor_animate_in_insert_mode = true
	g.neovide_cursor_animate_command_line = true
	g.neovide_cursor_unfocused_outline_width = 0.1
	g.neovide_theme = "gruvbox_material"

	vim.opt.linespace = 1
	vim.o.guifont = "FiraCode Nerd Font Mono:h18.5"
	vim.o.winblend = 20
	vim.o.textwidth = 120
	--vim.o.winwidth = 120
	vim.o.conceallevel = 3
	vim.o.mouse = "v"
	--vim.o.guifont = "FuraMono-Regular:h15"
	--vim.o.guifont = "Victor Mono:h15"
	--vim.o.guifont = ":h15"
	vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
	vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
	vim.keymap.set("v", "<D-c>", '"+y') -- Copy
	vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
	vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
	vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
	vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end
