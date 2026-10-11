return {
  -- NixOS: Mason-downloaded FHS binaries don't run; servers/formatters come
  -- from nixpkgs and per-project devenv shells instead.
  { "williamboman/mason.nvim", enabled = false },
  { "mason-org/mason.nvim", enabled = false },
  { "williamboman/mason-lspconfig.nvim", enabled = false },
  { "mason-org/mason-lspconfig.nvim", enabled = false },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- enables format_on_save
  },

  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPost", "BufWritePost" },
    config = function()
      require "configs.lint"
    end,
  },
}
