require("nvchad.configs.lspconfig").defaults()

-- setup .venv to pyright
local lspconfig = require("lspconfig")

local function get_venv_python()
    local venv = os.getenv("VIRTUAL_ENV")
    if not venv then
      local cwd = vim.fn.getcwd()
      local possible_paths = {
        cwd .. "/.venv",
        cwd .. "/venv",
        cwd .. "/env",
        cwd .. "/virtualenv"
      }
  
      for _, path in ipairs(possible_paths) do
        if vim.fn.isdirectory(path) == 1 then
          venv = path
          break
        end
      end
    end
  
    if venv then
      return venv .. "/bin/python"
    else
      return "python3" -- fallback
    end
  end

  -- Setup pyright with custom pythonPath
require'lspconfig'.pyright.setup{
    on_attach = require("lspconfig").pyright.on_attach,
    capabilities = require("lspconfig").pyright.capabilities,
    settings = {
      python = {
        pythonPath = get_venv_python(), -- dynamically set based on .venv
        analysis = {
          typeCheckingMode = "basic",
          autoImportCompletions = true,
          useLibraryCodeForTypes = true,
          typeCheckingMode = "off",
          extraPaths = {}
        }
      }
    }
  }



local servers = { "html", "cssls", "tailwindcss", "ts_ls", "jsonls", "lua_ls", "pyright", "dockerls" }
vim.lsp.enable(servers)
