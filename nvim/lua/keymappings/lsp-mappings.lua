local Snacks = require "snacks"

vim.keymap.set("n", "gd", function() Snacks.picker.lsp_definitions() end, { desc = "Goto definition" })
vim.keymap.set("n", "gr", function() Snacks.picker.lsp_references() end, { desc = "Get references" })

vim.keymap.set("n", "<leader>a", function() vim.lsp.buf.code_action() end, { silent = true, buffer = bufnr })
