vim.api.nvim_create_autocmd("VimEnter", { pattern = "*", command = "silent! cd %:p:h" })
vim.api.nvim_create_autocmd("BufWritePost", { pattern = "*", command = "FormatWrite" })
vim.api.nvim_create_autocmd("BufModifiedSet", {
	callback = function()
		require("lint").try_lint()
	end,
})

vim.api.nvim_create_user_command("Rg", "silent! grep <q-args> | copen", { nargs = "*" })
