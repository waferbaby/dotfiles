return {
  vim.lsp.config('ruby', {
    root_markers = { '.git' },
    cmd = { 'standardrb', '--lsp' },
    filetypes = { 'ruby', 'eruby' },
  })
}
