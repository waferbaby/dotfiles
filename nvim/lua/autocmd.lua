vim.api.nvim_create_autocmd("VimEnter", { pattern = "*", command = "silent! cd %:p:h" })
vim.api.nvim_create_autocmd("BufWritePost", { pattern = "*", command = "FormatWrite" })
