-- Code lint and format tools.
--
return {
	--[[
	{
		"Exafunction/codeium.nvim",
		cmd = "Codeium",
		build = ":Codeium Auth",
		event = "InsertEnter",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"hrsh7th/nvim-cmp",
		},
		opts = {},
	},
	--]]
	{ "cordx56/rustowl", dependencies = { "neovim/nvim-lspconfig" } },
	{
		"kawre/leetcode.nvim",
		enabled = false,
		build = ":TSUpdate html",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim", -- required by telescope
			"MunifTanjim/nui.nvim",
			-- optional
			"nvim-treesitter/nvim-treesitter",
			"rcarriga/nvim-notify",
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			lang = "golang",
			cn = {
				enabled = true,
			},
			plugins = {
				non_standalone = true,
			},
			description = {
				width = "10%",
			},
			storage = {
				home = "/Users/x/work/go/leetcode/code",
				cache = "/Users/x/work/go/leetcode/cache",
			},
			theme = {
				["alt"] = {
					bg = "#708090",
				},
				["normal"] = {
					fg = "#EA4AAA",
				},
			},
		},
	},
	{
		"sourcegraph/sg.nvim",
		event = "InsertEnter",
		enabled = false,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function(_, opts)
			require("sg").setup(opts)
		end,
	},
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				--go = { "gofumpt", "goimports" },
				go = { "goimports", "gofumpt", "goformat" },
				rust = { "rustfmt" },
				python = { "ruff_format" },
			},
			formatters = {
				goformat = {
					command = "goimports-reviser",
					args = {
						"-company-prefixes",
						"go-common,git.bilibili.co",
						"-imports-order",
						"std,project,company,general",
						"-format",
						"$FILENAME",
					},
					stdin = false,
					inherit = false,
				},
			},
			log_level = vim.log.levels.ERROR,
			notify_on_error = true,
		},
	},

	{
		"saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function(_, opts)
			require("crates").setup(opts)
		end,
	},

	{
		"Canop/nvim-bacon",
		event = { "BufRead Cargo.toml" },
		ft = { "rust" },
		dependencies = { "nvim-lspconfig" },
		config = function()
			require("bacon").setup({
				quickfix = {
					enabled = true,
					event_trigger = true,
				},
			})
		end,
	},

	-- lsp UI
	{
		"nvimdev/lspsaga.nvim",
		-- event = "BufRead",
		ft = { "rust", "go", "python", "zig" },
		opts = function()
			return require("plugins.configs.lspsaga")
		end,
		config = function(_, opts)
			require("lspsaga").setup(opts)
		end,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
			"nvim-treesitter/nvim-treesitter",
		},
	},
}
