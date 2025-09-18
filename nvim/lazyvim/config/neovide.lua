local g = vim.g

g.neovide_refresh_rate = 60
g.neovide_no_idle = false
--g.neovide_transparency = 0.80
g.neovide_opacity = 0.80
g.neovide_confirm_quit = true
g.neovide_normal_opacity = 0.8
g.neovide_cursor_smooth_blink = true
g.neovide_show_border = true
g.neovide_window_blurred = true
g.neovide_floating_blur_amount_x = 2.0
g.neovide_floating_blur_amount_x = 2.0
g.neovide_fullscreen = true
g.neovide_floating_shadow = true
g.neovide_floating_z_height = 10
g.neovide_light_angle_degrees = 45
g.neovide_light_radius = 5
g.neovide_cursor_vfx_particle_phase = 1.5
g.neovide_cursor_vfx_particle_curl = 1.0
g.neovide_cursor_antialiasing = true
g.neovide_confirm_quit = true
g.neovide_profiler = false
g.neovide_input_use_logo = true
g.neovide_hide_mouse_when_typing = false
--g.neovide_input_macos_option_key_is_meta = only_left
g.neovide_touch_deadzone = 1.0
g.neovide_cursor_animation_length = 0.10
g.neovide_cursor_animate_in_insert_mode = true
g.neovide_cursor_animate_command_line = true
g.neovide_cursor_unfocused_outline_width = 0.1
g.neovide_theme = "gruvbox_material"
g.neovide_scale_factor = 1.0
g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
g.neovide_text_gamma = 0.0
g.neovide_text_contrast = 0.3
g.neovide_padding_top = 0
g.neovide_padding_bottom = 0
g.neovide_padding_right = 0
g.neovide_padding_left = 0

vim.opt.linespace = 5
vim.o.guifont = "FiraCode Nerd Font Mono:h17.5:#h-normal"
vim.o.winblend = 10
vim.o.textwidth = 120
vim.o.conceallevel = 3

-- g.colorscheme = "highlite"
-- g.neovide_cursor_vfx_mode = "railgun"
-- g.neovide_cursor_trail_size = 0.8
-- vim.o.guifont = "FuraMono-Regular:h15"
-- vim.o.guifont = "Victor Mono:h15"
-- vim.o.guifont = ":h15"
-- vim.o.winwidth = 120
-- vim.o.guifont = "FiraCode Nerd Font Mono:#h-none:h18.5:w1.1"
--
vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
vim.keymap.set("v", "<D-c>", '"+y') -- Copy
vim.keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
vim.keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
vim.keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
vim.keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
