-- Setup
require("bufferline").setup{
    options = {
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        diagnostics = "coc",
        enforce_regular_tabs = true,
        sort_by = "relative_directory",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'},
        },
        groups = {
            items = {
                require("bufferline.groups").builtin.pinned:with({ icon = "⋄" })
            }
        },
    },
}

-- Shortcuts
vim.keymap.set("n", "<leader>p", ":BufferLineTogglePin<CR>")

vim.keymap.set("n", "<leader>wh", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>wl", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>wk", ":BufferLineGoToBuffer -1<CR>")
vim.keymap.set("n", "<leader>wj", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>w", ":BufferLinePick<CR>")

vim.keymap.set("n", "<leader>qh", ":BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>ql", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>qk", ":BufferLineGoToBuffer -1<CR>:BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>qj", ":BufferLineGoToBuffer 1<CR>:BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>ql", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLinePickClose<CR>")
