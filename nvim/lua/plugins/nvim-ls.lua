return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local null_ls = require("null-ls")

    return {
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell

      }
    }
  end
}
