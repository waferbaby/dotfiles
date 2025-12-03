return {
  'tanvirtin/vgit.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
  event = 'VimEnter',
  config = function() require("vgit").setup() end,
}
