-- Setup
require("toggleterm").setup{
    autochdir = true,
    direction = "vertical",
}

-- Shortcuts
vim.keymap.set("n", "<leader>t", ":ToggleTerm size=80<CR>")
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n>:ToggleTerm<CR>")
