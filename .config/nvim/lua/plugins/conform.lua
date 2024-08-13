return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = function()
    return {
      formatters_by_ft = {
        lua = { "stylua" },
        ruby = { "rubocop" },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end
}
