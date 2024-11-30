return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = function()
		return {
			formatters_by_ft = {
				json = { "jq" },
				lua = { "stylua" },
				ruby = { "rubocop" },
			},

			format_on_save = {
				timeout_ms = 1500,
				lsp_fallback = true,
			},
		}
	end,
}
