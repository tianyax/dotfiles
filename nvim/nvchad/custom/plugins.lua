local plugins = {
   {
      "nvim-treesitter/nvim-treesitter",
      opts = {
         ensure_installed = { "rust", "go", "python" },
      },
   },
   {
      "lukas-reineke/indent-blankline.nvim",
      enabled = false,
      opts = {
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
   },
   {
      "neovim/nvim-lspconfig",
      config = function()
         -- require "plugins.configs.lspconfig"
         require("custom.configs.lspconfigs").setup_lsp()
      end,
   },
   {
      "Exafunction/codeium.vim",
      --event = "InsertEnter",
   },
   {
      "sainnhe/gruvbox-material",
   },
   -- remove
   --{"NvChad/nvterm", disable = true },
   --{"feline-nvim/feline.nvim", disable = true },
   --["NvChad/extensions"] = { disable = true },
   --["rafamadriz/friendly-snippets"] = { disable = true },
   --["saadparwaiz1/cmp_luasnip"] = { disable = true },
   --["L3MON4D3/LuaSnip"] = { disable = true },
   --["hrsh7yh/nvim-cmp"] = { disable = true },
   --{"hrsh7yh/nvim-cmp-lua", disable = true },
   --{"hrsh7yh/nvim-cmp-lsp", disable = true },
   --{"hrsh7yh/nvim-buffer", disable = true },
   --{"hrsh7yh/nvim-path", disable = true },

   -- {"wakatime/vim-wakatime"} = {},

   {
      "codota/tabnine-nvim",
      build = "./dl_binaries.sh",
      event = "InsertEnter",
      opts = {
         disable_auto_comment = true,
         accept_keymap = "<Tab>",
         dismiss_keymap = "<C-]>",
         debounce_ms = 800,
         suggestion_color = { gui = "#808080", cterm = 244 },
         exclude_filetypes = { "TelescopePrompt" },
         log_file_path = nil,
      },
      config = function(_, opts)
         require("tabnine").setup(opts)
      end,
   },

   {
      "anuvyklack/windows.nvim",
      event = "WinNew",
      dependencies = {
         "anuvyklack/middleclass",
         "anuvyklack/animation.nvim",
      },
      init = function()
         vim.o.equalalways = false
      end,
      config = function(_, opts)
         require("windows").setup(opts)
      end,
   },
   -- Notification window
   --[[
  {
    "folke/noice.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        -- command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      messages = { enabled = false },
      lsp_progress = { enabled = true },
    },
    config = function(_, opts)
      require("noice").setup(opts)
    end,
  },
  --]]
   -- jump tools
   {
      "ggandor/leap.nvim",
      opts = function()
         return require "custom.configs.leap"
      end,
      config = function(_, opts)
         require("leap").setup(opts)
      end,
   },
   {
      "phaazon/hop.nvim",
      event = "VeryLazy",
      opts = {
         keys = "etovxqpdygfblzhckisuran",
      },
      config = function(_, opts)
         require("hop").setup(opts)
      end,
   },

   -- Code lint and format.
   {
      "nvimtools/none-ls.nvim",
      event = "VeryLazy",
      dependencies = {
         "nvim-lspconfig",
         "nvim-lua/plenary.nvim",
      },
      config = function()
         require("custom.configs.null-ls").setup()
      end,
   },

   -- rust tools
   {
      "saecki/crates.nvim",
      event = { "BufRead Cargo.toml" },
      dependencies = { "nvim-lua/plenary.nvim" },
      config = function(_, opts)
         require("crates").setup(opts)
      end,
   },

   {
      "simrat39/rust-tools.nvim",
      opts = function()
         return require "custom.configs.rust-tools"
      end,
      config = function(_, opts)
         require("rust-tools").setup(opts)
      end,
      dependencies = { "nvim-lspconfig" },
   },

   { "Canop/nvim-bacon", dependencies = { "nvim-lspconfig" } },

   -- lsp UI
   {
      "nvimdev/lspsaga.nvim",
      event = "BufRead",
      opts = function()
         return require "custom.configs.lspsaga"
      end,
      config = function(_, opts)
         require("lspsaga").setup(opts)
      end,
      dependencies = {
         "nvim-tree/nvim-web-devicons",
         "nvim-treesitter/nvim-treesitter",
      },
   },

   {
      "nvim-telescope/telescope-file-browser.nvim",
      opts = function()
         return require "custom.configs.telescope-extension"
      end,
      config = function(_, opts)
         require("telescope").setup(opts)
      end,
      dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
   },
   -- pop-up menu
   { "weilbith/nvim-code-action-menu", event = "VeryLazy", cmd = "CodeActionMenu" },
   -- Jump effects
   {
      "edluffy/specs.nvim",
      event = "WinScrolled",
      opts = function()
         return require "custom.configs.specs"
      end,
      config = function(_, opts)
         require("specs").setup(opts)
      end,
   },

   -- virtual types using built-in LSP client.
   { "jubnzv/virtual-types.nvim", event = "VeryLazy" },
   -- Zen mode
   {
      "folke/zen-mode.nvim",
      event = "VeryLazy",
      opts = {
         window = {
            width = 0.60,
         },
      },
   },
}

return plugins
