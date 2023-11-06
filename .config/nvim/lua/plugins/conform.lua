return {
  'stevearc/conform.nvim',
  opts = {
    formatters_by_ft = {
      ruby = { 'standardrb' }
    },

    format_on_save = {
      lsp_fallback = true,
    },
  }
}
