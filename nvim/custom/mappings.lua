local M = {}

M.telescope_extensions = {
   n = {
      ["<leader>fr"] = {
         "<cmd> :Telescope file_browser <CR>",
         "Open file browser",
      },
      ["<leader>rr"] = {
         "<cmd> :Ranger <CR>",
         "ranger",
      },
      ["<leader>fn"] = {
         "<cmd> :lua require('telescope').extensions.notify.notify()<CR>",
         "neovim notify",
      },
      ["<leader>rf"] = {
         "<cmd> :lua require('telescope').extensions.refactoring.refactors()<CR>",
         "refactors code",
      },
      ["<leader>cd"] = {
         "<cmd> :lua require('telescope').extensions.zoxide.list{}<CR>",
         "zoxide list",
      },
   },
}

M.Lsp = {
   n = {
      ["<leader>fd"] = {
         function()
            vim.diagnostic.open_float()
         end,
         "  floating diagnostic",
      },
      ["<leader>d"] = {
         function()
            vim.lsp.buf.type_definition()
         end,
         "   lsp definition type",
      },
      ["<leader>ls"] = {
         function()
            vim.lsp.buf.signature_help()
         end,
         " lsp signature_help",
      },
   },
}

M.ZenMode = {
   n = {
      ["<leader>z"] = { "<cmd> :ZenMode <CR>", "zen mode" },
   },
}

M.Hop = {
   n = {
      ["<leader>s"] = { "<cmd> :HopPattern <CR>", "hop search" },
      ["<leader>ll"] = { "<cmd> :HopLine <CR>", "hop search line" },
   },
}

-- gitsigns
M.gitsigns = {
   n = {
      ["<leader>gh"] = { "<cmd>Gitsigns preview_hunk <CR>", "git preview hunk" },
      ["<leader>gd"] = { "<cmd>Gitsigns diffthis <CR>", "git diff" },
      ["<leader>gb"] = { "<cmd>Gitsigns blame_line <CR>", "git blame" },
      ["<leader>gs"] = { "<cmd>Gitsigns stage_hunk <CR>", "git state hunk" },
      ["<leader>gus"] = { "<cmd>Gitsigns undo_stage_hunk <CR>", "git undo state hunk" },
   },
}

--- In lsp attach function
M.Lspsaga = {
   n = {
      ["gx"] = {
         "<cmd>Lspsaga code_action<cr>",
         " lspsaga code action",
      },
      ["go"] = {
         "<cmd>Lspsaga show_line_diagnostics<cr>",
         " lspsaga show line diagnostics",
      },
      ["gh"] = {
         "<cmd>Lspsaga lsp_finder<cr>",
         " lspsaga show definition",
      },
      ["gk"] = {
         "<cmd>Lspsaga hover_doc<cr>",
         " lspsaga hover doc",
      },
      ["<C-u>"] = {
         "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>",
      },
      ["<C-d"] = {
         "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>",
      },
   },
}

M.Undo = {
   n = {
      ["<leader>u"] = { "<cmd> :UndotreeToggle<CR>", "undotree" },
   },
}

return M

--[[
vim.api.nvim_set_keymap(
    "n",
    "<leader>d",
    "<Esc><cmd>lua require'popui.diagnostics-navigator'()<CR>",
    { noremap = true }
)
--]]

--[[
-- nvim-compleet config
local compleet = require "compleet"
local keymap = vim.keymap

local tab = function()
   return (compleet.is_menu_visible() and "<Plug>(compleet-next-completion)")
      or (compleet.has_completions() and "<Plug>(compleet-show-completions)")
      or "<Tab>"
end

local s_tab = function()
   return compleet.is_menu_visible() and "<Plug>(compleet-prev-completion)" or "<S-Tab>"
end

local right = function()
   return compleet.is_hint_visible() and "<Plug>(compleet-insert-hinted-completion)" or "<Right>"
end

local cr = function()
   return compleet.is_completion_selected() and "<Plug>(compleet-insert-selected-completion)" or "<CR>"
end

local opts = { expr = true, remap = true }

keymap.set("i", "<Tab>", tab, opts)
keymap.set("i", "<S-Tab>", s_tab, opts)
keymap.set("i", "<Right>", right, opts)
keymap.set("i", "<CR>", cr, opts)
--]]
