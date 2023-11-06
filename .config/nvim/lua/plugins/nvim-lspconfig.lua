return {
	"neovim/nvim-lspconfig",
	init = function()
    local lspconfig = require('lspconfig')

    lspconfig.rubocop.setup({})
    lspconfig.standardrb.setup({})
	end,
}
