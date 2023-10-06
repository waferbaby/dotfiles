return {
	"mhartington/formatter.nvim",
	opts = function()
		local util = require("formatter.util")

		return {
			logging = true,
			log_level = vim.log.levels.WARN,
			filetype = {
				["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace },
				javascript = { require("formatter.filetypes.javascript").prettier },
				lua = { require("formatter.filetypes.lua").stylua },
				ruby = {
					function()
						return {
							exe = "stree",
							args = {
								"format",
								"--print-width=100",
								util.escape_path(util.get_current_buffer_file_path()),
							},
							stdin = true,
						}
					end,
				},
			},
		}
	end,
}
