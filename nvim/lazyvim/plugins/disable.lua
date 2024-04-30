if true then
	return {}
end

return {
	{
		"nvimtools/none-ls.nvim",
		-- event = "VeryLazy",
		ft = { "rust", "go", "python", "zig" },
		dependencies = {
			"nvim-lspconfig",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("plugins.configs.none-ls").setup()
		end,
		enabled = false,
	},

	-- jump tools
	{
		"ggandor/leap.nvim",
		event = "VeryLazy",
		opts = {
			case_insensitive = true,
			safe_labels = {},
			labels = {},
			special_keys = {
				repeat_search = "<enter>",
				next_match = "<enter>",
				prev_match = "<tab>",
				next_group = "<space>",
				prev_group = "<tab>",
				eol = "<space>",
			},
		},
		config = function(_, opts)
			require("leap").setup(opts)
		end,
		enabled = false,
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
		enabled = false,
	},
	-- virtual types using built-in LSP client.
	{
		"jubnzv/virtual-types.nvim",
		event = "VeryLazy",
		enabled = false,
	},
	-- pop-up menu
	{
		"weilbith/nvim-code-action-menu",
		event = "VeryLazy",
		cmd = "CodeActionMenu",
		enabled = false,
	},
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
			require("plugins.configs.wlsample.airline")
		end,
	},
	{
		"glepnir/galaxyline.nvim",
		branch = "main",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("plugins.configs.galaxyline")
		end,
	},
	{
		"andweeb/presence.nvim",
		config = function()
			require("plugins.configs.presence")
		end,
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
			require("plugins.configs.scrollbar")
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
			require("plugins.configs.octo")
		end,
	},
	-- git
	{ "jiaoshijie/undotree" },

	-- fuzzy finding
	{
		"is0n/fm-nvim",
		config = function()
			require("plugins.configs.fm-nvim").setup()
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
			require("refactoring").setup({
				require("telescope").load_extension("refactoring"),
			})
		end,
	},
	{
		"noib3/nvim-compleet",
		run = "./install.sh release",
		config = function()
			require("plugins.configs.compleet").setup()
		end,
	},
	-- theme
	{ "Iron-E/nvim-highlite" },
	{ "sainnhe/edge" },
	{ "glepnir/zephyr-nvim" },
	{ "neoclide/coc.nvim", branch = "release" },
	{
		"lukas-reineke/lsp-format.nvim",
		config = function()
			require("lsp-format").setup({})
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
			require("plugins.configs.zoxide").setup()
		end,

		setup = function()
			lazy_load("telescope-zoxide")
		end,
	},
}
