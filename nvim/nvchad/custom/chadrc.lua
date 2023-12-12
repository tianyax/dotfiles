require "custom.neovide"

local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   --theme_toggle = { "everforest,  everforest_light" },
   theme = "chocolate",
   --theme = "chocolate_material",
   --theme = "chocolate",
   --theme = "radium",
   italic_comments = true,
   transparency = true,

   statusline = {
      theme = "default", -- default/vscode/vscode_colored/minimal
      separator_style = "default",
      overriden_modules = nil,
   },
   tabufline = {
      lazyload = true,
      overriden_modules = nil,
   },
}

-- Add custom plugins
M.plugins = "custom.plugins"

M.signature = {
   doc_lines = 5,
}

return M
