-- You don't need to set any of these options.
-- IMPORTANT!: this is only a showcase of how you can set default options!

local M = {}

M.setup = function()
   require("telescope").setup {
      extensions = {
         file_browser = {
            theme = "ivy",
         },
         ["ui-select"] = {
            require("telescope.themes").get_dropdown {
               -- even more opts
            },
         },
         fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
         },
      },
   }
   -- To get telescope-file-browser loaded and working with telescope,
   require("telescope").load_extension "file_browser"
   -- To get ui-select loaded and working with telescope, you need to call
   require("telescope").load_extension "ui-select"
   -- To get fzf loaded and working with telescope, you need to call
   require("telescope").load_extension "fzf"
end

return M
