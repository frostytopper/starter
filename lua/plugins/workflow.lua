return {
  -- devenv/direnv integration: pick up project shells outside `devenv shell`
  { "direnv/direnv.vim", lazy = false },

  -- debugging (python via debugpy from the active shell/venv)
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      {
        "mfussenegger/nvim-dap-python",
        ft = "python",
        config = function()
          require("dap-python").setup(vim.fn.exepath "python3")
        end,
      },
    },
  },

  -- pytest runner
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/neotest-python",
    },
    config = function()
      require("neotest").setup {
        adapters = {
          require("neotest-python") { runner = "pytest" },
        },
      }
    end,
  },

  -- SQL: SQLite/Postgres browsing + completion
  { "tpope/vim-dadbod", cmd = { "DB", "DBUI", "DBUIToggle" } },
  {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = { "tpope/vim-dadbod" },
    cmd = { "DBUI", "DBUIToggle" },
  },
  { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" } },

  -- visual undo tree
  {
    "debugloop/telescope-undo.nvim",
    keys = {
      { "<leader>u", "<cmd>Telescope undo<cr>", desc = "Undo tree" },
    },
    config = function()
      require("telescope").load_extension "undo"
    end,
  },

  -- git TUI
  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
}
