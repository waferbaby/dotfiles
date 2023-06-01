vim.g.mapleader = " "

vim.keymap.set("n", "<leader>/", ":%!sort -R<CR>")
vim.keymap.set("n", "<leader><Down>", "<C-W>j")
vim.keymap.set("n", "<leader><Left>", "<C-W>h")
vim.keymap.set("n", "<leader><Right>", "<C-W>l")
vim.keymap.set("n", "<leader><Up>", "<C-W>k")
vim.keymap.set("n", "<leader>[", ":bp<CR>")
vim.keymap.set("n", "<leader>]", ":bn<CR>")
vim.keymap.set("n", "<leader>j", "vipJ")
vim.keymap.set("n", "<leader>v", ":edit $MYVIMRC<CR>")

local telescope = require("telescope.builtin")

vim.keymap.set("n", "<leader>t", telescope.find_files)
vim.keymap.set("n", "<leader>f", telescope.live_grep)
