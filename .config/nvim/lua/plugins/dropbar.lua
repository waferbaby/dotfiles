return {
	"Bekaboo/dropbar.nvim",
	opts = {
		icons = {
			enable = false,
			ui = {
				bar = { separator = " >" },
			},
		},
		sources = {
			path = {
				filter = function(_)
					return false
				end,
			},
		},
	},
}
