-- Setup
require("bufferline").setup{
    options = {
        numbers = "buffer_id",
        show_buffer_icons = false,
        sort_by = "id",
    },
}

-- Shortcuts
vim.keymap.set("n", "<leader>p", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLinePickClose<CR>")
