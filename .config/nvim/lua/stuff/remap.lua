vim.g.mapleader = ";"
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "_", "<C-O>")
vim.keymap.set("n", "+", "<C-I>")

-- vim.keymap.set("n", "J", "<C-d>")
-- vim.keymap.set("n", "K", "<C-u>")
-- 
-- vim.keymap.set("n", "F", "<C-f>")
-- vim.keymap.set("n", "B", "<C-b>")

vim.keymap.set("n", "WW", "<C-w><C-w>")

vim.keymap.set("n", "<leader>bn", vim.cmd.bnext)
vim.keymap.set("n", "<leader>bp", vim.cmd.bprev)
