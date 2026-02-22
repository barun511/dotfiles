return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
      enable_git_status = true,
      modified = {
        symbol = "[+]",
        highlight = "NeoTreeModified",
      },
      filesystem = {
        window = {
          mappings = {
            ["l"] = "open",
            ["h"] = "close",
          },
        },
      },
      git_status = {
        symbols = {
          -- Change type
          added = "", -- or "✚"
          modified = "", -- or ""
          deleted = "✖", -- this can only be used in the git_status source
          renamed = "󰁕", -- this can only be used in the git_status source
          -- Status type
          untracked = "",
          ignored = "",
          unstaged = "󰄱",
          staged = "",
          conflict = "",
        },
        window = {
          width = 30,
          mappings = {
            ["<S-CR>"] = "system_open",
            ["<Space>"] = false,
            ["[b"] = "prev_source",
            ["]b"] = "next_source",
            ["o"] = {
              "show_help",
              nowait = false,
              config = { title = "Order by", prefix_key = "o" },
            },
            O = "system_open",
            Y = "copy_selector",
            h = "parent_or_close",
            l = "open",
          },
        },
      },
    },
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim", -- makes sure that this loads after Neo-tree.
    },
    config = function() require("lsp-file-operations").setup() end,
  },
  {
    "s1n7ax/nvim-window-picker",
    version = "2.*",
    config = function()
      require("window-picker").setup {
        filter_rules = {
          include_current_win = false,
          autoselect_one = true,
          -- filter using buffer options
          bo = {
            -- if the file type is one of following, the window will be ignored
            filetype = { "neo-tree", "neo-tree-popup", "notify" },
            -- if the buffer type is one of following, the window will be ignored
            buftype = { "terminal", "quickfix" },
          },
        },
      }
    end,
  },
}
