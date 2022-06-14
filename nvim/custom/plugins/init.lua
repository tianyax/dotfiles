return {
   ["wakatime/vim-wakatime"] = {},

   -- Notification window
   ["rcarriga/nvim-notify"] = {
      config = function()
         require("custom.plugins.notify").setup()
      end,
   },
   -- statusline
   -- Replace the default feline.nvim
   --[[
   ["windwp/windline.nvim"] = {
      config = function()
         --require "custom.plugins.wlsample.evil_line"
         require "custom.plugins.wlsample.airline"
      end,
   },
   --]]

   --[[
   ["glepnir/galaxyline.nvim"] = {
      branch = "main",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
      config = function()
         require "custom.plugins.galaxyline"
      end,
      --config = function()
      --   require("custom.plugins.galaxyline").setup()
      --end,
   },
   --]]

   ["andweeb/presence.nvim"] = {
      config = function()
         require "custom.plugins.presence"
      end,
   },

   -- jump tools
   ["ggandor/leap.nvim"] = {
      config = function()
         require "custom.plugins.leap"
      end,

      setup = function()
         require("core.utils").packer_lazy_load "leap.nvim"
      end,
   },
   ["phaazon/hop.nvim"] = {
      config = function()
         require("hop").setup { keys = "etovxqpdygfblzhckisuran" }
      end,

      setup = function()
         require("core.utils").packer_lazy_load "hop.nvim"
      end,
   },

   -- Code lint and format.
   ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
         require("custom.plugins.null-ls").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "null-ls.nvim"
      end,
   },

   -- rust tools
   ["saecki/crates.nvim"] = {
      event = { "BufRead Cargo.toml" },
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
         require("crates").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "crates.nvim"
      end,
   },

   ["simrat39/rust-tools.nvim"] = {
      config = function()
         require("custom.plugins.rust-tools").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "rust-tools.nvim"
      end,
   },

   ["ray-x/go.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
         require "custom.plugins.go"
      end,

      setup = function()
         require("core.utils").packer_lazy_load "go.nvim"
      end,
   },

   -- lsp UI
   ["tami5/lspsaga.nvim"] = {
      config = function()
         require "custom.plugins.lspsaga"
      end,
   },

   ["ray-x/guihua.lua"] = {
      run = "cd lua/fzy && make",
   },

   -- treesitter extension
   ["nvim-treesitter/nvim-treesitter-context"] = {
      opt = true,
      requires = { "nvim-treesitter/nvim-treesitter" },

      config = function()
         require("treesitter-context").setup()
      end,
   },

   ["nvim-telescope/telescope-file-browser.nvim"] = {
      requires = { "nvim-lua/plenary.nvim" },
      --after = "nvim-telescope/telescope.nvim",
      config = function()
         require("custom.plugins.telescope-extension").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "telescope-file-browser.nvim"
      end,
   },
   ["nvim-telescope/telescope-ui-select.nvim"] = {
      setup = function()
         require("core.utils").packer_lazy_load "telescope-ui-select.nvim"
      end,
   },
   ["nvim-telescope/telescope-fzf-native.nvim"] = {
      run = "make",
      setup = function()
         require("core.utils").packer_lazy_load "telescope-fzf-native.nvim"
      end,
   },

   -- Smooth scrolling
   ["karb94/neoscroll.nvim"] = {
      opt = true,
      config = function()
         require("neoscroll").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "neoscroll.nvim"
      end,
   },

   ["petertriho/nvim-scrollbar"] = {
      config = function()
         require "custom.plugins.scrollbar"
      end,
   },

   -- github issue
   ["pwntester/octo.nvim"] = {
      requires = {
         "nvim-lua/plenary.nvim",
         "nvim-telescope/telescope.nvim",
         "kyazdani42/nvim-web-devicons",
      },
      config = function()
         require "custom.plugins.octo"
      end,
   },

   -- git
   ["jiaoshijie/undotree"] = {
      setup = function()
         require("core.utils").packer_lazy_load "undotree"
      end,
   },

   -- fuzzy finding
   ["is0n/fm-nvim"] = {
      config = function()
         require("custom.plugins.fm-nvim").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "fm-nvim"
      end,
   },

   -- code refactoring
   ["ThePrimeagen/refactoring.nvim"] = {
      requires = {
         { "nvim-lua/plenary.nvim" },
         { "nvim-treesitter/nvim-treesitter" },
      },
      config = function()
         require("refactoring").setup {
            require("telescope").load_extension "refactoring",
         }
      end,

      setup = function()
         require("core.utils").packer_lazy_load "refactoring.nvim"
      end,
   },

   -- pop-up menu
   ["weilbith/nvim-code-action-menu"] = {
      cmd = "CodeActionMenu",

      setup = function()
         require("core.utils").packer_lazy_load "nvim-code-action-menu"
      end,
   },

   --[[
   ["RishabhRD/popfix"] = {
      config = function()
         require "custom.plugins.popfix"
      end,
   },
   ["hood/popui.nvim"] = {
      requires = { "RishabhRD/popfix" },
   },
   --]]

   -- Jump effects
   ["edluffy/specs.nvim"] = {
      config = function()
         require "custom.plugins.specs"
      end,
      disable = false,

      setup = function()
         require("core.utils").packer_lazy_load "specs.nvim"
      end,
   },

   -- virtual types using built-in LSP client.
   ["jubnzv/virtual-types.nvim"] = {
      setup = function()
         require("core.utils").packer_lazy_load "virtual-types.nvim"
      end,
   },

   --[[
    ["noib3/nvim-compleet"] = {
        run = "./install.sh release",
        config = function()
            require("custom.plugins.compleet").setup()
        end,
    },
    --]]

   -- Zen mode
   ["folke/zen-mode.nvim"] = {
      config = function()
         require("zen-mode").setup()
      end,

      setup = function()
         require("core.utils").packer_lazy_load "zen-mode.nvim"
      end,
   },

   ["folke/twilight.nvim"] = {
      config = function()
         require "custom.plugins.twilight"
      end,
      cmd = { "Twilight" },

      setup = function()
         require("core.utils").packer_lazy_load "twilight.nvim"
      end,
   },

   -- theme
   ["catppuccin/nvim"] = {
      as = "catppuccin",

      config = function()
         require "custom.plugins.catppuccin"
      end,

      setup = function()
         require("core.utils").packer_lazy_load "catppuccin"
      end,
   },
   --["sainnhe/edge"] = {},
   --["glepnir/zephyr-nvim"] = {},

   -- float terminal
   --["akinsho/toggleterm.nvim"] = {},

   --["neoclide/coc.nvim"] = {
   --    branch = 'release',
   --},

   --[[
   ["lukas-reineke/lsp-format.nvim"] = {
      config = function()
          require("lsp-format").setup {}
    end,
   },
   --]]

   -- neovim zoxide
   --[[
   ["jvgrootveld/telescope-zoxide"] = {
      requires = {
         "nvim-telescope/telescope.nvim",
         "nvim-lua/plenary.nvim",
      },

      config = function()
         require("custom.plugins.zoxide").setup()
      end,

      setup = function()
         lazy_load "telescope-zoxide"
      end,
   },
   --]]
}
