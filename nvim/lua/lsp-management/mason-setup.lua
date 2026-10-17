vim.pack.add {
  "https://github.com/mason-org/mason.nvim",
}
vim.pack.add {
  "https://github.com/neovim/nvim-lspconfig",
}
vim.pack.add {
  "https://github.com/mason-org/mason-lspconfig.nvim",
}

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "gopls",
    "stylua",
    "postgres_lsp",
    "biome",
    "cssls",
    "hls",
    "clangd",
    "ts_ls",
  },
}

-- Format on save
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("lsp", { clear = true }),
  callback = function(args)
    -- 2
    vim.api.nvim_create_autocmd("BufWritePre", {
      -- 3
      buffer = args.buf,
      callback = function()
        -- 4 + 5
        vim.lsp.buf.format { async = false, id = args.data.client_id }
      end,
    })
  end,
})

-- Attach biome
vim.lsp.enable "biome"
