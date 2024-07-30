vim.api.nvim_create_autocmd("VimEnter", { pattern = "*", command = "silent! cd %:p:h" })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'ruby',
  callback = function(args)
    vim.lsp.start({
      name = 'rubocop',
      cmd = { 'bundle', 'exec', 'rubocop', '--lsp' },
      root_dir = vim.fs.root(args.buf, { 'Gemfile', '.git' }),
    })
  end,
})

vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client.supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
    end

    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_create_autocmd('BufWritePre', {
        buffer = args.buf,
        callback = function()
          vim.lsp.buf.format({bufnr = args.buf, id = client.id})
        end,
      })
    end
  end,
})

vim.api.nvim_create_user_command("Rg", "silent! grep <q-args> | copen", { nargs = "*" })
