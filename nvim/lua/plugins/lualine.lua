return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = false,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = '|'},
    },
    sections = {
      lualine_a = { "mode", "branch" },
      lualine_b = { "buffers" },
      lualine_c = {},
      lualine_y = { "progress" },
      lualine_z = { "location" }
    },
  }
}
