-- Leader
vim.g.mapleader = " "

-- Insert Mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Disable Recording
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

-- Better yank/put
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Window Management
vim.keymap.set("n", "<C-W>z", ":wincmd _<CR>")
vim.keymap.set("n", "<C-W>Z", ":wincmd =<CR>")
