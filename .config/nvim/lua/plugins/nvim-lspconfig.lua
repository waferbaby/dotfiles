return {
	"neovim/nvim-lspconfig",
	init = function()
		require("lspconfig").rubocop.setup({})
	end,
}
