require "custom.neovide"

local plugins = require "custom.plugins"

local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   theme_toggle = { "everforest,  everforest_light" },
   theme = "doomchad",
   italic_comments = true,
   transparency = true,

   statusline = {
      separator_style = "default", -- default/round/slant/block/arrow
   },
}

-- Add custom plugins
M.plugins = plugins

M.signature = {
   doc_lines = 5,
}

return M
