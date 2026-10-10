vim.pack.add {
  "https://github.com/rebelot/kanagawa.nvim",
}
require("kanagawa").setup {
  theme = "wave",
  background = {
    dark = "dragon",
  },
}
vim.cmd.colorscheme "kanagawa"
