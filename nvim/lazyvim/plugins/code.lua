-- Code lint and format tools.
--
return {
	{
		"neovim/nvim-lspconfig",
		ft = { "rust", "go", "python", "zig" },
		config = function()
			require("plugins.configs.lspconfigs").setup()
		end,
	},

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
	--
	{
		"codota/tabnine-nvim",
		build = "./dl_binaries.sh",
		event = "InsertEnter",
		opts = {
			disable_auto_comment = false,
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
				--go = { "gofumpt", "goimports" },
				--go = { "gofumpt" },
				go = { "goformat" },
				rust = { "rustfmt" },
			},
			formatters = {
				goformat = {
					command = "goimports-reviser",
					args = {
						"-company-prefixes",
						"go-common,git.bilibili.co",
						"-imports-order",
						"std,project,company,general",
						"-rm-unused",
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

	--[[
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
		ft = { "rust" },
		opts = function()
			return require("plugins.configs.rust-tools")
		end,
		config = function(_, opts)
			require("rust-tools").setup(opts)
		end,
		dependencies = { "nvim-lspconfig" },
	},
    --]]

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
