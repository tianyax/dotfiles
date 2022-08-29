require("custom.neovide")

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
       lspconfig = {
          setup_lspconf = "custom.plugins.lspconfig", -- path of lspconfig file
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

return M
