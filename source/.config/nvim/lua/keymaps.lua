vim.g.mapleader = " "

vim.keymap.set("n", "<C-Down>", "<CMD>NavigatorDown<CR>")
vim.keymap.set("n", "<C-Left>", "<CMD>NavigatorLeft<CR>")
vim.keymap.set("n", "<C-Right>", "<CMD>NavigatorRight<CR>")
vim.keymap.set("n", "<C-Up>", "<CMD>NavigatorUp<CR>")

vim.keymap.set("n", "<leader>/", ":%!sort -R<CR>")
vim.keymap.set("n", "<leader>[", ":bp<cr>")
vim.keymap.set("n", "<leader>]", ":bn<cr>")
vim.keymap.set("n", "<leader>f", ":Rg ")
vim.keymap.set("n", "<leader>j", "vipJ")
vim.keymap.set("n", "<leader>v", ":edit $MYVIMRC<cr>")
