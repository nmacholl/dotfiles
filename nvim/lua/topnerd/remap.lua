-- Leader
vim.g.mapleader = " "

-- Copy Pasta
vim.keymap.set("v", "<C-y>", [["+yi]])
vim.keymap.set("v", "<C-x>", [["+c]])
vim.keymap.set("v", "<C-p>", [[c<ESC>"+p]])
vim.keymap.set("n", "<C-p>", [[<ESC>"+pa]])

-- Spell
vim.keymap.set("n", "<F3>", ":set spell!<CR>")
vim.keymap.set("i", "<F3>", "<C-O>:set spell!<CR>")
