vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "ruby",
  callback = function()
    vim.lsp.buf.format({ async = true })
  end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt_local.number = false
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "ruby",
  callback = function()
    vim.b.autoformat = true
  end,
})

vim.api.nvim_create_autocmd("VimEnter", { pattern = "*", command = "silent! cd %:p:h" })
vim.api.nvim_create_user_command("Rg", "silent! grep <q-args> | copen", { nargs = "*" })
