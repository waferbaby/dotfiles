return {
	"mfussenegger/nvim-lint",
	init = function()
		require("lint").linters_by_ft = {
			lua = { "luacheck" },
		}
	end,
}
