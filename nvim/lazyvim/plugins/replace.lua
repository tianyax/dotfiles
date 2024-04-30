return {
	{
		"LazyVim/LazyVim",
		dependencies = { "sainnhe/gruvbox-material" },
		opts = {
			colorscheme = "gruvbox-material",
		},
	},

	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			local icon = require("lazyvim.config").icons.kinds.tabnine
			table.insert(opts.sections.lualine_x, 2, require("lazyvim.util").lualine.cmp_source("tabnine", icon))
		end,
	},

	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = {
			fold_open = "",
			fold_closed = "",
			use_diagnostic_signs = false,
			icons = false,
			indent_lines = true,
			signs = {
				error = "error",
				warning = "warn",
				hint = "hint",
				information = "info",
			},
		},
	},

	{
		"mfussenegger/nvim-lint",
		linters_by_ft = {
			go = { "golangcilint" },
			python = { "ruff" },
		},
	},

	-- disable default plugins
	{ "lukas-reineke/indent-blankline.nvim", enabled = false },
	{ "nvimdev/dashboard-nvim", enabled = false },
	{ "rafamadriz/friendly-snippets", enabled = false },
	{ "williamboman/mason-lspconfig.nvim", enabled = false },
	{ "williamboman/mason.nvim", enabled = false },
	{ "L3MON4D3/LuaSnip", enabled = false },
	{ "folke/neoconf.nvim", enabled = false },
	{ "windwp/nvim-ts-autotag", enabled = false },
	{ "RRethy/vim-illuminate", enabled = false },
	{ "folke/persistence.nvim", enabled = false },
	{ "nvim-treesitter/nvim-treesitter-textobjects", enabled = false },
	{ "echasnovski/mini.indentscope", enabled = false },
	{ "echasnovski/mini.comment", enabled = false },
	{ "echasnovski/mini.ai", enabled = false },
	{ "catppuccin/nvim", enabled = false },
	{ "saadparwaiz1/cmp_luasnip", enabled = true },
	{ "stevearc/dressing.nvim", enabled = false },
	{ "nvim-ts-context-commentstring", enabled = false },
	{ "echasnovski/mini.surround", enabled = false },
	{ "folke/tokyonight.nvim", enabled = false },
	{ "folke/flash.nvim", enabled = false },
	{ "nvim-neo-tree/neo-tree.nvim", enabled = false },
	-- { "hrsh7th/nvim-cmp", enabled = false },
}
