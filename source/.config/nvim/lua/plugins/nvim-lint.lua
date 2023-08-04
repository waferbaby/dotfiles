return {
	"mfussenegger/nvim-lint",
	init = function()
    print "HEY"
		require("lint").linters_by_ft = {
			lua = { "luacheck" },
		}
	end,
}
