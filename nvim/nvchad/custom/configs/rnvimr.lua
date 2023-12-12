local g = vim.g

g.rnvimr_enable_ex = 1
g.rnvimr_enable_picker = 1
g.rnvimr_draw_border = 0
g.rnvimr_hide_gitignore = 1
--g.rnvimr_border_attr = { fg = 14, bg = -1 }
g.rnvimr_shadow_winblend = 70
g.rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
g.rnvimr_action = {
   ["<C-t>"] = "NvimEdit tabedit",
   ["<C-x>"] = "NvimEdit split",
   ["<C-v>"] = "NvimEdit vsplit",
   gw = "JumpNvimCwd",
   yw = "EmitRangerCwd",
}
g.rnvimr_ranger_views = {
   { minwidth = 90, ratio = {} },
   { minwidth = 50, maxwidth = 89, ratio = { 1, 1 } },
   { maxwidth = 49, ratio = { 1 } },
}
