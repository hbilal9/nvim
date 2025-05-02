local lint = require("lint")

lint.linters_by_ft = {
  markdown = { "vale" },
  python = { "flake8" },
  lua = { "luacheck" },
  javascript = { "eslint_d" },
  typescript = { "eslint_d" },
  json = { "jsonlint" },
  html = { "htmlhint" },
  css = { "stylelint" },
  dockerfile = { "hadolint" },
  jsx = { "eslint_d" },
  tsx = { "eslint_d" },
}

vim.api.nvim_create_autocmd({"BufEnter", "BufWritePost", "InsertLeave" }, {
  pattern = { "*.lua", "*.py", "*.js", "*.ts", "*.json", "*.html", "*.css", "*.md", "*.dockerfile", "*.jsx", "*.tsx" },
  callback = function()
    lint.try_lint()
  end,
})