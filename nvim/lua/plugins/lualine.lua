return {
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      icons_enabled = false,
      theme = {
        normal = {
          a = "String",
          b = "StatusLine",
          c = "StatusLine",
          x = "StatusLine",
          y = "StatusLine",
          z = "StatusLine"
        },
        insert = {
          a = { fg = "#00ff00" }
        },
        visual = {
          a = { fg = "#7b68ee" }
        }
      },
    },
    sections = {
      lualine_a = {
        {
          "mode",
          fmt = function(str) return str:sub(1,1) end
        }
      },
      lualine_b = { "branch" },
      lualine_c = {
        {
          "buffers",
          symbols = {
            alternate_file = ''
          },
          buffers_color = {
            inactive = "Comment"
          },
          fmt = function(buffer, options)
            return "[" .. buffer .. "]"
          end
        }
      },
      lualine_x = {
        {
          "filetype",
          color = "Identifier"
        }
      },
      lualine_y = { "progress" },
      lualine_z = { "location" }
    },
  }
}
