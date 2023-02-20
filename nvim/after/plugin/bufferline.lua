-- Setup
require("bufferline").setup{
    options = {
        show_buffer_icons = false,
        diagnostics = "coc",
        enforce_regular_tabs = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'},
        },
        groups = {
            items = {
                require("bufferline.groups").builtin.pinned:with({ icon = "⋄" })
            }
        }
    },
}

-- Shortcuts
vim.keymap.set("n", "<leader>e", ":BufferLinePick<CR>")
vim.keymap.set("n", "<leader>p", ":BufferLineTogglePin<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLinePickClose<CR>")
vim.keymap.set("n", "<leader>q[", ":BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>q]", ":BufferLineCloseRight<CR>")
