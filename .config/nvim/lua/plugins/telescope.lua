return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function()
    return {
      defaults = {
        preview = false,
        prompt_position = "bottom",
        prompt_title = false,
        mappings = {
          i = { ["<esc>"] = require("telescope.actions").close },
        },

        sorting_strategy = "ascending",
        border = true,
        borderchars = { "─", "", "", "", "", "", "", "" },
        layout_strategy = "bottom_pane",
        layout_config = {
          height = 8,
        },
      },

      pickers = {
        find_files = { theme = "dropdown" },
        git_status = { theme = "dropdown" },
        buffers = { theme = "dropdown" },
      },
    }
  end,
}
