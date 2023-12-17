-- Setup
function ignore_checks(buf_number, buf_numbers)
    local bufname = vim.fn.bufname(buf_number)
    -- Ignore fugitive buffers
    if string.find(bufname, "^fugitive://") ~= nil then
        return false
    end
    -- Ignore no_name buffers
    if bufname == "" then
        return false
    end
    -- Ignore NvimTree
    if string.find(bufname, "^NvimTree") ~= nil then
        return false
    end

    return true
end

require("bufferline").setup({
    options = {
        show_buffer_icons = true,
        show_buffer_close_icons = false,
        diagnostics = "nvim_lsp",
        enforce_regular_tabs = true,
        sort_by = "relative_directory",
        indicator = {
            icon = "▌",
            style = "icon",
        },
        hover = {
            enabled = true,
            delay = 200,
            reveal = { "close" },
        },
        groups = {
            items = {
                require("bufferline.groups").builtin.pinned:with({ icon = "⋄" }),
            },
        },
        separator_style = "thick",
        custom_filter = ignore_checks,
    },
})

-- Shortcuts
vim.keymap.set("n", "<leader>p", ":BufferLineTogglePin<CR>")

vim.keymap.set("n", "<leader>wj", ":BufferLineCyclePrev<CR>")
vim.keymap.set("n", "<leader>wk", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<leader>wl", ":BufferLineGoToBuffer -1<CR>")
vim.keymap.set("n", "<leader>wh", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>w", ":BufferLinePick<CR>")

vim.keymap.set("n", "<leader>qh", ":BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>ql", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>qk", ":BufferLineGoToBuffer -1<CR>:BufferLineCloseLeft<CR>")
vim.keymap.set("n", "<leader>qj", ":BufferLineGoToBuffer 1<CR>:BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>ql", ":BufferLineCloseRight<CR>")
vim.keymap.set("n", "<leader>q", ":BufferLinePickClose<CR>")
