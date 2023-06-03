return {
  "mhartington/formatter.nvim",
  opts = function()
    return {
      logging = true,
      log_level = vim.log.levels.WARN,
      filetype = {
        ruby = { require("formatter.filetypes.ruby").rubocop },
        ["*"] = { require("formatter.filetypes.any").remove_trailing_whitespace }
      }
    }
  end
}
