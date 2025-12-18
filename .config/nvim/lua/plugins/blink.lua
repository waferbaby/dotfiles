return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		keymap = { preset = "super-tab" },
		completion = {
			documentation = { auto_show = false },
			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},
		},

		sources = {
			default = { "lsp", "buffer" },
		},

		fuzzy = { implementation = "lua" },
	},
	opts_extend = { "sources.default" },
}
