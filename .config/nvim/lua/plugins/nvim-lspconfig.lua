return {
	"neovim/nvim-lspconfig",
	init = function()
    local lspconfig = require('lspconfig')
    
    lspconfig.standardrb.setup({})
	end,
}
