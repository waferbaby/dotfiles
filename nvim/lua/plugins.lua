local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "lewis6991/gitsigns.nvim"
})

require("gitsigns").setup()

require("telescope").setup {
  defaults = {
    preview = false,
    prompt_position = "bottom",
    prompt_title = false,
    mappings = {
      i = {
        ["<esc>"] = require('telescope.actions').close,
      },
    }
  },

  pickers = {
    find_files = { theme = "dropdown" },
  }
}
