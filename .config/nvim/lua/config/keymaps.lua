vim.g.mapleader = " "

-- General

vim.keymap.set("n", "<leader>/", ":%!sort -R<CR>")
vim.keymap.set("n", "<leader>[", ":bp<cr>")
vim.keymap.set("n", "<leader>]", ":bn<cr>")
vim.keymap.set("n", "<leader>f", ":Rg ")
vim.keymap.set("n", "<leader>j", "vipJ")

-- Telescope
vim.keymap.set("n", "<leader>g", function()
	require("telescope.builtin").git_status({})
end)
vim.keymap.set("n", "<leader>t", function()
	require("telescope.builtin").find_files({})
end)
vim.keymap.set("n", "<leader>v", function()
	require("telescope.builtin").find_files({ cwd = "~/.config/nvim/" })
end)
vim.keymap.set("n", "<leader><leader>", function()
	require("telescope.builtin").buffers({})
end)

-- Navigator

vim.keymap.set("n", "<C-Down>", function()
	require("Navigator").down()
end)
vim.keymap.set("n", "<C-Left>", function()
	require("Navigator").left()
end)
vim.keymap.set("n", "<C-Right>", function()
	require("Navigator").right()
end)
vim.keymap.set("n", "<C-Up>", function()
	require("Navigator").up()
end)

-- Gitsigns

vim.keymap.set("n", "gb", function()
	require("gitsigns").blame_line({})
end)
