return {
  "nvim-treesitter/nvim-treesitter",
  init = function()
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true
      }
    })
  end,
  config = true
}
