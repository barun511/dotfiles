local Snacks = require "snacks"

vim.keymap.set("n", "<leader>e", function()
  if Snacks.picker.get({ source = "explorer" })[1] == nil then
    Snacks.picker.explorer()
  elseif Snacks.picker.get({ source = "explorer" })[1]:is_focused() == true then
    -- AI generated, kind of stupid, definitely going to trip me up at some point.
    local win_id = vim.fn.win_getid(vim.fn.winnr "l")
    local buf_nr = vim.api.nvim_win_get_buf(win_id)
    vim.cmd.buffer(buf_nr)
  else
    Snacks.picker.get({ source = "explorer" })[1]:focus()
  end
end, { desc = "Open explorer" })

-- Also just open the explorer because that's always the first thing I do anyway.
Snacks.picker.explorer()
