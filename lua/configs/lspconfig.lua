require("nvchad.configs.lspconfig").defaults()

-- Servers are installed via nixpkgs / devenv shells, not Mason.
-- read :h vim.lsp.config for changing options of lsp servers

vim.lsp.config("ty", {
  settings = {
    ty = { diagnosticMode = "workspace" },
  },
})

vim.lsp.enable { "ty", "nil_ls", "bashls", "clangd" }
