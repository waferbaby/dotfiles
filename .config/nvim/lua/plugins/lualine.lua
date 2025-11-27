return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = false,
      section_separators = "",
      component_separators = "",
      always_show_tabline = true,
      theme = {
        normal = {
          a = "String",
          b = "StatusLine",
          c = "StatusLine",
          x = "StatusLine",
          y = "StatusLine",
          z = "StatusLine",
        },
        insert = {
          a = { fg = "#00ff00" },
        },
        visual = {
          a = { fg = "#7b68ee" },
        },
      },
    },
    sections = {
      lualine_a = {
        {
          "mode",
          fmt = function(str)
            return str:sub(1, 1)
          end,
        },
      },
      lualine_b = {
        {
          "branch",
          fmt = function(str)
            return str == "" or str .. " >"
          end,
        },
        {
          "filename",
          padding = 0,
          path = 3,
        },
        {
          "filetype",
          color = "Identifier",
          fmt = function(str)
            return str == "" or "(" .. str .. ")"
          end,
        },
      },
      lualine_c = {},
      lualine_x = { "lsp_status" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    tabline = {
      lualine_a = {
        {
          'buffers',
          show_modified_status = false,
          symbols = {
            alternate_file = '',
          },
        }
      }
    }
  },
}
