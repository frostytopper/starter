local lint = require "lint"

lint.linters_by_ft = {
  python = { "mypy" },
  sh = { "shellcheck" },
}

-- ty handles the in-editor LSP layer; mypy runs as a strict linter on top.
table.insert(lint.linters.mypy.args, "--strict")

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost", "InsertLeave" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
