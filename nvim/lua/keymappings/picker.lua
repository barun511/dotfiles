local Snacks = require "snacks"

vim.keymap.set("n", "<leader>ff", function() Snacks.picker.files() end, { desc = "Find Files" })
vim.keymap.set("n", "<leader>fb", function() Snacks.picker.buffers() end, { desc = "Buffers" })
vim.keymap.set("n", "<leader>fg", function() Snacks.picker.grep { ignored = false } end, { desc = "Grep" })
vim.keymap.set(
  "n",
  "<leader>fr",
  function() Snacks.picker.recent { filter = { cwd = true }, ignored = false } end,
  { desc = "Recent" }
)
