-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change leader key
vim.g.mapleader = " "

-- line number
vim.opt.number = true
vim.opt.relativenumber = true

-- should be loaded after colours right
vim.api.nvim_set_hl(0, "LineNr", { fg = "#f0f0f0" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#e5c07b", bold = true })

-- clipboard
vim.opt.clipboard:append { "unnamedplus" }

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- set default indents to width
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- splits open in the right
vim.opt.splitright = true

require "config"
print "Finished config"
