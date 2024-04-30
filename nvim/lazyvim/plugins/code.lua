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
		"codota/tabnine-nvim",
		build = "./dl_binaries.sh",
		event = "InsertEnter",
		enabled = false,
		opts = {
			disable_auto_comment = true,
			accept_keymap = "<Tab>",
			dismiss_keymap = "<C-]>",
			debounce_ms = 800,
			suggestion_color = { gui = "#808080", cterm = 244 },
			exclude_filetypes = { "TelescopePrompt", "NvimTree" },
			log_file_path = nil,
		},
		config = function(_, opts)
			require("tabnine").setup(opts)
		end,
	},

	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				-- go = { "gofumpt", "goimports" },
				go = { "goimports", "goformat" },
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

	{ "Canop/nvim-bacon", ft = { "rust" }, dependencies = { "nvim-lspconfig" } },

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
