local M = {}

function M.setup()
	pcall(function()
		require("telescope").load_extension("notify")
	end)

	vim.notify = require("notify")

	require("notify").setup({
		background_colour = "#121212",
		-- fade_in_slide_out
		-- fade
		-- slide
		-- static
		stages = "fade",
		fps = 60,
		timeout = 2000,
	})
end

return M
