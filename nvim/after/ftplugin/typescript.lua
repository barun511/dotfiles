vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.keymap.set(
  "n",
  "<leader>k", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function() vim.cmd.RustLsp { "hover", "actions" } end,
  { silent = true, buffer = bufnr }
)
