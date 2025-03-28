-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- lspsaga keymap
map("n", "gd", "<cmd>Lspsaga goto_definition<CR>", { desc = "lspsaga go to definition" })
map("n", "gx", "<cmd>Lspsaga code_action<cr>", { desc = "lspsaga code action" })
map("n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", { desc = "lspsaga show line diagnostics" })
map("n", "gp", "<cmd>Lspsaga peek_definition<CR>", { desc = "lspsaga peek definition" })
map("n", "gr", "<cmd>Lspsaga finder<cr>", { desc = "lspsaga show definition" })
map("n", "gk", "<cmd>Lspsaga hover_doc<cr>", { desc = "lspsaga hover doc" })
map("n", "gl", "<cmd>Lspsaga outline<cr>", { desc = "show out line toggle in left" })

map("n", "<leader>fd", function()
	vim.diagnostic.open_float()
end, { desc = "floating diagnostic" })

-- buffer
map("n", "<leader>d", "<cmd>bdelete<cr>", { desc = "Delete Buffer" })

-- zenmode keymaps
-- map("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "🧘 Zen Mode" })
map("n", "<tab>", "<cmd>bn<cr>", { desc = "Switch to Other Buffer" })

-- gitsigns keymaps
map("n", "<leader>gh", "<cmd>Gitsigns preview_hunk<cr>", { desc = "git preview hunk" })
map("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "git diff" })
map("n", "<leader>gb", "<cmd>Gitsigns blame_line<cr>", { desc = "git blame" })
map("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "git state hunk" })
map("n", "<leader>gus", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "git undo state hunk" })

map("n", "<leader>bc", "<cmd>BufferLinePick<cr>", { desc = "buffer line pick" })
