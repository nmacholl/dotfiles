-- Setup
require("aerial").setup({
    on_attach = function(bufnr)
        -- Jump forwards/backwards with '{' and '}'
        vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
        vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
    end,
    layout = {
        min_width = 50,
        default_direction = "prefer_right",
        resize_to_content = false,
    },
    lsp = {
        diagnostics_trigger_update = false,
        update_when_errors = false,
    },
})
-- You probably also want to set a keymap to toggle aerial
vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
