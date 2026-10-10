vim.pack.add { {
  src = "https://github.com/saghen/blink.cmp",
  version = vim.version.range "1.10.2",
} }

local blink = require "blink.cmp"

blink.setup {
  keymap = {
    preset = "enter",
    ["<Tab>"] = { "select_next", "fallback" },
    ["<S-Tab>"] = { "select_prev", "fallback" },
  },
}
