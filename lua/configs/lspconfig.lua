require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "tailwindcss", "ts_ls", "jsonls", "lua_ls", "pyright", "dockerls" }
vim.lsp.enable(servers)
