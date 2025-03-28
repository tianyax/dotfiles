return {
	{
		"LazyVim/LazyVim",
		dependencies = { "sainnhe/everforest" },
		--opts = {
		--	colorscheme = "everforest",
		--},
		dependencies = { "sainnhe/gruvbox-material" },
		opts = {
			colorscheme = "gruvbox-material",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"python",
				"rust",
				"go",
				"zig",
			},
		},
	},
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				layout = { preview = true },
				matcher = { sort_empty = false, fuzzy = true },
			},
		},
	},
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			stiffness = 0.8,
			trailing_stiffness = 0.6,
			trailing_exponent = 0,
			distance_stop_animating = 0.5,
			hide_target_hack = false,
		},
	},
	{
		"akinsho/bufferline.nvim",
		optional = true,
		opts = function(_, opts)
			opts.options = {
				custom_areas = {
					right = function()
						local result = {}
						local seve = vim.diagnostic.severity
						local error = #vim.diagnostic.get(0, { severity = seve.ERROR })
						local warning = #vim.diagnostic.get(0, { severity = seve.WARN })
						local info = #vim.diagnostic.get(0, { severity = seve.INFO })
						local hint = #vim.diagnostic.get(0, { severity = seve.HINT })
						if error ~= 0 then
							table.insert(result, { text = "  " .. error, link = "DiagnosticError" })
						end
						if warning ~= 0 then
							table.insert(result, { text = "  " .. warning, link = "DiagnosticWarn" })
						end
						if hint ~= 0 then
							table.insert(result, { text = "  " .. hint, link = "DiagnosticHint" })
						end
						if info ~= 0 then
							table.insert(result, { text = "  " .. info, link = "DiagnosticInfo" })
						end
						return result
					end,
				},
				separator_style = "slope",
				diagnostics = "nvim_lsp",
				indicator = {
					icon = "▎",
					style = "underline",
				},
				offsets = {
					{
						filetype = "NvimTree",
						text = "NvimTree",
						text_align = "left",
						highlight = "Directory",
						separator = true,
					},
				},
				diagnostics_indicator = function(count, level, diagnostics_dict, context)
					local s = " "
					for e, n in pairs(diagnostics_dict) do
						local sym = e == "error" and " " or (e == "warning" and " " or " ")
						s = s .. n .. sym
					end
					return s
				end,
				highlights = {
					fill = {
						bg = {
							attribute = "fg",
							highlight = "Pmenu",
						},
					},
				},
			}
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = function(_, opts)
			local icon = require("lazyvim.config").icons.kinds.tabnine
			table.insert(opts.sections.lualine_x, 2, require("lazyvim.util").lualine.cmp_source("tabnine", icon))
		end,
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
	{ "saadparwaiz1/cmp_luasnip", enabled = false },
	{ "stevearc/dressing.nvim", enabled = false },
	{ "nvim-ts-context-commentstring", enabled = false },
	{ "echasnovski/mini.surround", enabled = false },
	{ "folke/tokyonight.nvim", enabled = false },
	{ "folke/flash.nvim", enabled = true },
	{ "nvim-neo-tree/neo-tree.nvim", enabled = false },
	-- { "hrsh7th/nvim-cmp", enabled = false },
}
