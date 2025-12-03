return {
  vim.lsp.config('ruby', {
    root_markers = { 'Gemfile', '.git' },
    cmd = { 'ruby-lsp' },
    filetypes = { 'ruby', 'eruby' },
    init_options = {
      formatter = 'standard',
      linters = { 'standard' },
      addonSettings = {
        ["Ruby LSP Rails"] = {
          enablePendingMigrationsPrompt = false,
        },
      },
    }
  })
}
