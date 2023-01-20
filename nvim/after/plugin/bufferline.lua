-- Setup
require("bufferline").setup{
    options = {
        numbers = "buffer_id",
        show_buffer_icons = true,
        diagnostics = "coc",
        enforce_regular_tabs = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'},
        },
    },
}

-- Shortcuts
vim.keymap.set("n", "<leader>p", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLinePickClose<CR>")
