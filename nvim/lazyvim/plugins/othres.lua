return {
	--[[
	{
		"nvim-tree/nvim-tree.lua",
		cmd = { "NvimTreeToggle", "NvimTreeFocus" },
		config = function(_, opts)
			require("nvim-tree").setup(opts)
		end,
		keys = {
			{
				"<C-n>",
				function()
					require("nvim-tree.api").tree.toggle()
				end,
				desc = "Toggle NvimTree",
			},
			{
				"<leader>e",
				function()
					require("nvim-tree.api").tree.focus()
				end,
				desc = "Focus NvimTree",
			},
		},
	},
	--]]
	-- theme
	{ "rose-pine/neovim" },

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

	-- jump effects
	--{
	--	"edluffy/specs.nvim",
	--	event = "WinScrolled",
	--	opts = function()
	--		return require("plugins.configs.specs")
	--	end,
	--	config = function(_, opts)
	--		require("specs").setup(opts)
	--	end,
	--},

	-- Zen mode
	{
		"folke/zen-mode.nvim",
		opts = {
			window = {
				width = 0.70,
			},
		},
		keys = {
			{
				"<leader>z",
				function()
					require("zen-mode").toggle()
				end,
				desc = "🧘 Zen Mode",
			},
		},
	},
}
