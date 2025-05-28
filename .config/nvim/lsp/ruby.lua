return {
  vim.lsp.config('ruby', {
    root_markers = { '.git' },
    cmd = { 'ruby-lsp' },
    filetypes = { 'ruby', 'eruby' },
  })
}
