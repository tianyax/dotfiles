local catppuccin = require "catppuccin"
local present, fl = pcall(require, "feline")

local feline = function()
   if present then
      fl.setup {
         components = require "catppuccin.core.integrations.feline",
      }
   end
end

-- configure it
catppuccin.setup {
   feline(),
   transparent_background = true,
   term_colors = true,
   styles = {
      comments = "italic",
      functions = "italic",
      keywords = "italic",
      strings = "NONE",
      variables = "italic",
   },
   integrations = {
      treesitter = true,
      native_lsp = {
         enabled = true,
         virtual_text = {
            errors = "italic",
            hints = "italic",
            warnings = "italic",
            information = "italic",
         },
         underlines = {
            errors = "underline",
            hints = "underline",
            warnings = "underline",
            information = "underline",
         },
      },
      lsp_trouble = true,
      cmp = true,
      lsp_saga = true,
      gitgutter = false,
      gitsigns = true,
      telescope = true,
      nvimtree = {
         enabled = true,
         show_root = false,
         transparent_panel = true,
      },
      neotree = {
         enabled = false,
         show_root = false,
         transparent_panel = false,
      },
      which_key = true,
      indent_blankline = {
         enabled = true,
         colored_indent_levels = false,
      },
      dashboard = true,
      neogit = false,
      vim_sneak = false,
      fern = false,
      barbar = false,
      bufferline = true,
      markdown = true,
      lightspeed = false,
      ts_rainbow = false,
      hop = true,
      notify = true,
      telekasten = false,
      symbols_outline = true,
   },
}
