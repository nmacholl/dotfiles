-- Setup
require("toggleterm").setup{
    autochdir = true,
    direction = "vertical",
    start_in_insert = false,
}

-- Shortcuts
vim.keymap.set("n", "<leader>t", ":ToggleTerm size=100<CR>")
vim.keymap.set("t", "<leader><Esc>", "<C-\\><C-n><CR>")
