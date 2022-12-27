-- Setup
require('neosolarized').setup({
    comment_italics = true,
    background_set = false,
})

-- Customizations
vim.api.nvim_set_hl(0, 'CursorLine', { bg="", fg="#b58900",} )
vim.api.nvim_set_hl(0, 'Directory', { bg="", fg="#6c71c4", bold=true, } )
