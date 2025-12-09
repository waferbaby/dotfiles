return {
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },
  opts = {
    keymap = { preset = 'enter' },
    completion = { documentation = { auto_show = false } },

    sources = {
      default = { 'lsp', 'buffer' },
    },

    fuzzy = { implementation = "lua" }
  },
  opts_extend = { "sources.default" }
}
