return {
  "nvim-telescope/telescope.nvim",
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>t", function() require('telescope.builtin').find_files{} end },
    { "<leader>f", function() require('telescope.builtin').live_grep{} end }
  },
  opts = function()
    return {
      defaults = {
        preview = false,
        prompt_position = "bottom",
        prompt_title = false,
        mappings = {
          i = {["<esc>"] = require("telescope.actions").close}
        }
      },

      pickers = {
        find_files = { theme = "dropdown" },
        live_grep = { theme = "dropdown" }
      }
    }
  end
}
