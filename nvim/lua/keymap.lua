vim.g.mapleader = " "

vim.keymap.set("n", "<leader>/", ":%!sort -R<CR>")
vim.keymap.set("n", "<leader><Down>", "<C-W>j")
vim.keymap.set("n", "<leader><Left>", "<C-W>h")
vim.keymap.set("n", "<leader><Right>", "<C-W>l")
vim.keymap.set("n", "<leader><Up>", "<C-W>k")
vim.keymap.set("n", "<leader>[", ":bp<cr>")
vim.keymap.set("n", "<leader>]", ":bn<cr>")
vim.keymap.set("n", "<leader>f", ":lua require('nvim-ripgrep').grep()<cr>")
vim.keymap.set("n", "<leader>j", "vipJ")
vim.keymap.set("n", "<leader>v", ":edit $MYVIMRC<cr>")
