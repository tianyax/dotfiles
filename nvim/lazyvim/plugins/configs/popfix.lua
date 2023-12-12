local border_chars = {
	TOP_LEFT = "┌",
	TOP_RIGHT = "┐",
	MID_HORIZONTAL = "─",
	MID_VERTICAL = "│",
	BOTTOM_LEFT = "└",
	BOTTOM_RIGHT = "┘",
}

local function select_callback(index, line)
	-- function job here
end

local function close_callback(index, line)
	-- function job here
end

local opts = {
	height = 40,
	width = 120,
	mode = "editor",
	close_on_bufleave = true,
	--data = <data-table>, -- Read below how to provide this.
	keymaps = {
		i = {
			["<Cr>"] = function(popup)
				popup:close(select_callback)
			end,
		},
		n = {
			["<Cr>"] = function(popup)
				popup:close(select_callback)
			end,
		},
	},
	callbacks = {
		select = select_callback, -- automatically calls it when selection changes
		close = close_callback, -- automatically calls it when window closes.
	},
	list = {
		border = true,
		numbering = true,
		title = "MyTitle",
		border_chars = border_chars,
		highlight = "Normal",
		selection_highlight = "Visual",
		matching_highlight = "Identifier",
	},
	preview = {
		type = "terminal",
		border = true,
		numbering = true,
		title = "MyTitle",
		border_chars = border_chars,
		highlight = "Normal",
		preview_highlight = "Visual",
	},
	prompt = {
		border = true,
		numbering = true,
		title = "MyTitle",
		border_chars = border_chars,
		highlight = "Normal",
		prompt_highlight = "Normal",
	},
	sorter = require("popfix.sorter").new_fzy_native_sorter(true),
	fuzzyEngine = require("popfix.fuzzy_engine").new_SingleExecutionEngine(),
}

local popup = require("popfix"):new(opts)
