vim.treesitter.start()
vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- local ht = require "haskell-tools"
-- local bufnr = vim.api.nvim_get_current_buf()
-- local opts = { noremap = true, silent = true, buffer = bufnr, }

-- vim.keymap.set("n", "K", function() vim.cmd.Haskell { "hover" } end, { desc = "haskell: hover actions" })
-- vim.keymap.set("n", "<leader>rr", ht.repl.toggle, opts)
-- vim.keymap.set('n', '<leader>rq', ht.repl.quit, opts)
-- vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
-- vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
