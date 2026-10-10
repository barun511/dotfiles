vim.keymap.set("n", "<leader>q", function() vim.cmd ":wqa!" end, {
  desc = "Save and quit all",
})
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])

vim.keymap.set("n", "<leader>i", "<C-o>", { desc = "Go back" })
vim.keymap.set("n", "<leader>o", "<C-i>", { desc = "Go forward" })
