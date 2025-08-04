require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- GitHub Copilot mappings
map("n", "<leader>cp", ":Copilot panel<CR>", { desc = "Copilot panel" })
map("n", "<leader>cs", ":Copilot status<CR>", { desc = "Copilot status" })
map("n", "<leader>ce", ":Copilot enable<CR>", { desc = "Copilot enable" })
map("n", "<leader>cd", ":Copilot disable<CR>", { desc = "Copilot disable" })
