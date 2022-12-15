require("toggleterm").setup {
   hide_numbers = true,
   autochdir = false,
   shade_terminals = true,
   shade_filetypes = { "none", "rs", "go", "py" },
   start_in_insert = true,
   insert_mappings = true,
   terminal_mappings = true,
   persist_size = false,
   persist_mode = true,
   direction = "float", -- Tab
   close_on_exit = true,
   auto_scroll = true,
   float_opts = {
      border = "curved",
   },
   winbar = {
      enabled = true,
      name_formatter = function(term) --  term: Terminal
         return term.name
      end,
   },
}
