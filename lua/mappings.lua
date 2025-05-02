require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Explorer" })

-- Copilot Mappings
map("n", "<leader>zc", ":CopilotChat<CR>", { desc = "Copilot Chat Toggle" })
map("v", "<leader>ze", ":CopilotChatExplain<CR>", { desc = "Copilot Explain Code" })
map("v", "<leader>zr", ":CopilotChatReview<CR>", { desc = "Copilot Review Code" })
map("v", "<leader>zf", ":CopilotChatFix<CR>", { desc = "Copilot Fix Code" })
map("v", "<leader>zo", ":CopilotChatOptimize<CR>", { desc = "Copilot Optimize Code" })
map("v", "<leader>zd", ":CopilotChatDocs<CR>", { desc = "Copilot Docs Code" })
map("v", "<leader>zt", ":CopilotChatTest<CR>", { desc = "Copilot Test Code" })
map("n", "<leader>zm", ":CopilotChatCommit<CR>", { desc = "Generate Commit Message" })
