require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("i", "jj", "<ESC>")

-- disable the spacebar default behavior in Normal and Visual mode
map({ "n", "v" }, "<Space>", "<Nop>", opts)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Explorer" })


-- Save with both Ctrl+S and Cmd+S
map({"n"}, "<C-s>", ":w<CR>", { desc = "Save File" })
map({"i"}, "<C-s>", "<ESC>:w<CR>a", { desc = "Save File" })
map({"n", "i", "v"}, "<D-s>", "<ESC>:w<CR>", { desc = "Save File" })

-- Telescope Diagnostics
local actions = require("telescope.actions")
local builtin = require("telescope.builtin")    
map("n", "<leader>fd", function()
    builtin.diagnostics({
      bufnr = 0,         -- Only current buffer
      previewer = false, -- No code preview window
    })
  end, { desc = "Diagnostics" })

-- toggle wrapping lines on off
map("n", "<leader>ww", function()
  vim.wo.wrap = not vim.wo.wrap
  if vim.wo.wrap then
    print("Line wrapping enabled")
  else
    print("Line wrapping disabled")
  end
end, { desc = "Toggle Line Wrapping" })

-- Copilot Mappings
map("n", "<leader>zc", ":CopilotChat<CR>", { desc = "Copilot Chat Toggle" })
map("v", "<leader>ze", ":CopilotChatExplain<CR>", { desc = "Copilot Explain Code" })
map("v", "<leader>zr", ":CopilotChatReview<CR>", { desc = "Copilot Review Code" })
map("v", "<leader>zf", ":CopilotChatFix<CR>", { desc = "Copilot Fix Code" })
map("v", "<leader>zo", ":CopilotChatOptimize<CR>", { desc = "Copilot Optimize Code" })
map("v", "<leader>zd", ":CopilotChatDocs<CR>", { desc = "Copilot Docs Code" })
map("v", "<leader>zt", ":CopilotChatTest<CR>", { desc = "Copilot Test Code" })
map("n", "<leader>zm", ":CopilotChatCommit<CR>", { desc = "Generate Commit Message" })
