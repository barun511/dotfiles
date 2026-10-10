vim.pack.add {
  "https://github.com/jake-stewart/multicursor.nvim",
}

local mc = require "multicursor-nvim"
mc.setup()

vim.keymap.set({ "n", "x" }, "<leader>n", function() mc.matchAddCursor(1) end, { desc = "Next matching word cursor" })

mc.addKeymapLayer(function(layerSet)
  -- Clearing cursors using escape
  layerSet("n", "<esc>", function()
    if not mc.cursorsEnabled() then
      mc.enableCursors()
    else
      mc.clearCursors()
    end
  end)
end)
