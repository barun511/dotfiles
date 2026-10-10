vim.pack.add {
  "https://github.com/nvim-mini/mini.icons",
}

require("mini.icons").setup()

vim.pack.add {
  "https://github.com/nvim-tree/nvim-web-devicons",
}

require("nvim-web-devicons").setup()

vim.pack.add {
  "https://github.com/folke/snacks.nvim",
}

local Snacks = require "snacks"

Snacks.setup {
  explorer = { enabled = true },
  picker = {
    enabled = true,
    ignored = true,
    hidden = true,
    win = {
      input = {
        keys = {
          ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
          ["<Tab>"] = { "list_down", mode = { "i", "n" } },
        },
      },
    },
  },
  words = { enabled = true },
}
