-- Leader
vim.g.mapleader = " "

-- Disable Recording
vim.keymap.set("n", "q", "<nop>")
vim.keymap.set("n", "Q", "<nop>")

-- Window Management
vim.keymap.set("n", "<C-W>z", ":wincmd _<CR>")
vim.keymap.set("n", "<C-W>x", ":wincmd =<CR>")

-- Copy Pasta
vim.keymap.set("v", "<C-y>", [["+yi]])
vim.keymap.set("v", "<C-x>", [["+c]])
vim.keymap.set("v", "<C-p>", [[c<ESC>"+p]])
vim.keymap.set("n", "<C-p>", [[<ESC>"+pa]])
