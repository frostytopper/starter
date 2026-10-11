return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua", "vim", "vimdoc",
        "python", "bash", "nix", "c", "cpp",
        "sql", "html", "xml",
        "markdown", "markdown_inline",
        "regex", "yaml", "toml", "json",
        "gitcommit", "diff",
      },
    },
  },
}
