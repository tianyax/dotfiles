local plugins = {
  {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
    config = function()
      require("lsp_lines").setup()
    end,
  },
  -- Replace the default feline.nvim
  {
    "windwp/windline.nvim",
    config = function()
      --require "custom.plugins.wlsample.evil_line"
      require "custom.plugins.wlsample.airline"
    end,
  },
  {
    "glepnir/galaxyline.nvim",
    branch = "main",
    requires = { "kyazdani42/nvim-web-devicons", opt = true },
    config = function()
      require "custom.plugins.galaxyline"
    end,
    --config = function()
    --   require("custom.plugins.galaxyline").setup()
    --end,
  },
  {
    "andweeb/presence.nvim",
    config = function()
      require "custom.plugins.presence"
    end,
  },
  {
    "ray-x/go.nvim",
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.go"
    end,
  },
  { "ray-x/guihua.lua", run = "cd lua/fzy && make" },
  -- treesitter extension
  {
    "nvim-treesitter/nvim-treesitter-context",
    disable = true,
    opt = true,
    after = { "nvim-treesitter" },

    config = function()
      require("treesitter-context").setup()
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
    after = { "plenary.nvim", "telescope.nvim" },
  },
  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    opt = true,
    config = function()
      require("neoscroll").setup()
    end,
  },
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require "custom.plugins.scrollbar"
    end,
  },
  -- github issue
  {
    "pwntester/octo.nvim",
    after = {
      "plenary.nvim",
      "telescope.nvim",
      "nvim-web-devicons",
    },
    config = function()
      require "custom.plugins.octo"
    end,
  },
  -- git
  { "jiaoshijie/undotree" },

  -- fuzzy finding
  {
    "is0n/fm-nvim",
    config = function()
      require("custom.plugins.fm-nvim").setup()
    end,
  },
  -- code refactoring
  {
    "ThePrimeagen/refactoring.nvim",
    after = {
      "plenary.nvim",
      "nvim-treesitter",
      "telescope.nvim",
    },
    config = function()
      require("refactoring").setup {
        require("telescope").load_extension "refactoring",
      }
    end,
  },
  {
    "RishabhRD/popfix",
    config = function()
      require "custom.plugins.popfix"
    end,
  },
  { "hood/popui.nvim", requires = { "RishabhRD/popfix" } },
  {
    "noib3/nvim-compleet",
    run = "./install.sh release",
    config = function()
      require("custom.plugins.compleet").setup()
    end,
  },
  {
    "folke/twilight.nvim",
    config = function()
      require "custom.plugins.twilight"
    end,
    cmd = { "Twilight" },
  },
  -- theme
  { "Iron-E/nvim-highlite" },
  {
    "catppuccin/nvim",
    as = "catppuccin",

    config = function()
      require "custom.plugins.catppuccin"
    end,
  },
  { "sainnhe/edge" },
  { "glepnir/zephyr-nvim" },
  -- float terminal
  {
    "akinsho/toggleterm.nvim",
    tag = "*",
    config = function()
      require "custom.configs.toggleterm"
    end,
  },
  { "neoclide/coc.nvim", branch = "release" },
  {
    "lukas-reineke/lsp-format.nvim",
    config = function()
      require("lsp-format").setup {}
    end,
  },
  -- neovim zoxide
  {
    "jvgrootveld/telescope-zoxide",
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
}
