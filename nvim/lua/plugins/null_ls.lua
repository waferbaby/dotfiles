return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local null_ls = require("null-ls")

    return {
      null_ls.builtins.completion.spell,
      null_ls.builtins.formatting.prettierd
    }
  end
}
