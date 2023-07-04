return {
  "nvim-telescope/telescope.nvim",
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>t", function() require('telescope.builtin').find_files{} end },
    { "<leader>g", function() require('telescope.builtin').git_status{} end },
    { "<leader><leader>", function() require('telescope.builtin').buffers{} end }
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
        find_files = {
          theme = "dropdown",
          find_command = { "rg", "--files", "--hidden" }
        },
        git_status = { theme = "dropdown" }
      }
    }
  end
}
