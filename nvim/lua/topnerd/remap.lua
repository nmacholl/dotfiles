-- Leader
vim.g.mapleader = " "

-- Disable Recording
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

-- Window Management
vim.keymap.set("n", "<C-W>z", ":wincmd _<CR>")
vim.keymap.set("n", "<C-W>x", ":wincmd =<CR>")
