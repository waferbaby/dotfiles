return {
  "nvim-treesitter/nvim-treesitter",
  init = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "css", "fish", "html", "javascript", "json", "lua", "markdown", "ruby", "sql" },
      auto_install = true,
      highlight = {
        enable = true
      },
      incremental_selection = {
        enable = true
      }
    })
  end,
  config = true
}
