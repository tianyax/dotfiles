require "custom.neovide"

local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   --theme_toggle = { "everforest,  everforest_light" },
   theme = "gruvchad",
   --theme = "gruvchad_material",
   --theme = "doomchad",
   --theme = "radium",
   italic_comments = true,
   transparency = true,

   statusline = {
      separator_style = "default", -- default/round/slant/block/arrow
   },
}

-- Add custom plugins
M.plugins = "custom.plugins"

M.signature = {
   doc_lines = 5,
}

return M
