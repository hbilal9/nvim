return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- mason conform used to install formatters
  {
    "zapling/mason-conform.nvim",
    event = "VeryLazy",
    dependencies = {"conform.nvim"},
    config = function()
      require "configs.mason-conform"
    end,
  },
  
  -- mason lspconfig used to install language servers
--   {
--     "williamboman/mason-lspconfig.nvim",
--     event = "VeryLazy",
--     dependencies = { "nvim-lspconfig" },
--     config = function()
--         require("configs.mason-lspconfig")
--     end,
-- },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Linter 
  {
    "mfussenegger/nvim-lint",
    event = {"BufWritePre", "BufReadPre", "BufNewFile"},
    config = function()
      require "configs.lint"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
    event = {"BufReadPre", "BufNewFile"},
  	config = function()
      require "configs.treesitter"
    end,
  },

  -- Github Copilot
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      {"github/copilot.vim"},
      {"nvim-lua/plenary.nvim", branch = "master"},
    },
    event = {"BufReadPre", "BufNewFile"},
    build = "make tiktoken", -- Only needed for Linux/MacOS
    opts = {},
  },
}
