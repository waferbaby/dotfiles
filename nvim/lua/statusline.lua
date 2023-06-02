local statusline = {
  "%F",
  "%#User2#",
  "%= %y ",
  "%#User3#",
  "(%l/%L) %P"
}

vim.opt.statusline = table.concat(statusline)
