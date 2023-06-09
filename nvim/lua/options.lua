vim.opt.autoread = true
vim.opt.autowriteall = true
vim.opt.background = "dark"
vim.opt.clipboard = "unnamed"
vim.opt.cmdheight=0
vim.opt.encoding = "utf8"
vim.opt.expandtab = true
vim.opt.foldenable = false
vim.opt.grepprg = "rg --vimgrep --smart-case --hidden --follow"
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.secure = true
vim.opt.shiftwidth = 2
vim.opt.shortmess:append("I")
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2

vim.diagnostic.config({ virtual_text = false })
