return {
	"neovim/nvim-lspconfig",
	init = function()
		require("lspconfig").ruby_ls.setup({})
	end,
}
