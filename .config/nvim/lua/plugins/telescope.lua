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
          height = 0.5,
        },
      },
    }
  end,
}
