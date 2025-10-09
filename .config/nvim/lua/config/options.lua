vim.lsp.enable('ruby')

vim.g.loaded_netrw = true
vim.g.loaded_netrwPlugin = true
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

vim.opt.autoread = true
vim.opt.autowriteall = true
vim.opt.background = "dark"
vim.opt.clipboard = "unnamed"
vim.opt.cmdheight = 2
vim.opt.encoding = "utf8"
vim.opt.expandtab = true
vim.opt.exrc = true
vim.opt.foldenable = false
vim.opt.grepprg = "rg --vimgrep --smart-case --hidden"
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.mouse =
vim.opt.number = true
vim.opt.secure = true
vim.opt.shiftwidth = 2
vim.opt.shortmess:append("I")
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.softtabstop = 2
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

vim.diagnostic.config({ virtual_text = { source = "always" } })
