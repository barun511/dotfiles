-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- should be loaded after colours right
vim.api.nvim_set_hl(0, "LineNr", { fg = "#f0f0f0" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e5c07b", bold = true })

-- clipboard
vim.opt.clipboard:append { "unnamedplus" }

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
require "config.lazy"
require "keymappings"
