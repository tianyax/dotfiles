local plugins = require "custom.plugins"

local M = {}

M.mappings = require "custom.mappings"

M.ui = {
   theme_toggle = { "everforest, doomchad" },
   theme = "gruvchad",
   italic_comments = true,
   transparency = true,
}

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#f08080 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#ffb366 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#00ced1 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

-- Add custom plugins
M.plugins = {
   --install = plugins,
   user = plugins,
   remove = { "feline-nvim/feline.nvim" },
   options = {
      statusline = {
         separator_style = "arrow", -- default/round/slant/block/arrow
      },
   },
   override = {
      ["nvim-treesitter/nvim-treesitter"] = {
         ensure_installed = {
            "rust",
            "go",
            "python",
         },
      },
      ["lukas-reineke/indent-blankline.nvim"] = {
         show_first_indent_level = true,
         space_char_blankline = " ",
         char_highlight_list = {
            "IndentBlanklineIndent1",
            "IndentBlanklineIndent2",
            "IndentBlanklineIndent3",
            "IndentBlanklineIndent4",
            "IndentBlanklineIndent5",
            "IndentBlanklineIndent6",
         },
      },
      ["NvChad/nvterm"] = {
         terminals = {
            type_opts = {
               float = {
                  relative = "win",
                  row = 0.1,
                  col = 0.1,
                  width = 0.8,
                  height = 0.7,
                  border = "rounded", -- none, single, double, rounded, solid, shadow
                  style = "minimal",
               },
            },
         },
      },
      ["ray-x/lsp_signature.nvim"] = {
         doc_lines = 5,
         max_width = 99,
      },
   },
}

M.signature = {
   doc_lines = 5,
}

M.options = {
   user = function()
      vim.opt.shiftwidth = 4
      vim.opt.smartindent = true
      vim.opt.tabstop = 4
   end,
}

return M
