vim.lsp.config["ocamllsp"] = {
  cmd = { "ocamllsp" },
  filetypes = {
    "ocaml",
    "ocaml.interface",
    "ocaml.menhir",
    "ocaml.ocamllex",
    "dune",
    "reason",
  },
  root_markers = {
    { "dune-project", "dune-workspace" },
    { "*.opam", "esy.json", "package.json" },
    ".git",
  },
  settings = {},
}

vim.lsp.enable "ocamllsp"

-- We set up conform because ocaml does not format via lsp.

vim.pack.add {
  "https://github.com/stevearc/conform.nvim",
}

require("conform").setup {
  formatters_by_ft = {
    ocaml = { "ocamlformat" },
  },
  formatters = {
    ocamlformat = {
      prepend_args = {
        "--if-then-else",
        "vertical",
        "--break-cases",
        "fit-or-vertical",
        "--type-decl",
        "sparse",
      },
    },
  },
}

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args) require("conform").format { bufnr = args.buf } end,
})
