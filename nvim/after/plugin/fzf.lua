-- Setup
require('fzf-lua').setup{
  winopts = {},
}

-- Shortcuts
vim.api.nvim_set_keymap('n', '<leader><tab>',
    "<cmd>lua require('fzf-lua').files()<CR>",
    { noremap = true, silent = true, cwd=pwd, }
)

vim.api.nvim_set_keymap('n', '<leader>gr',
    "<cmd>lua require('fzf-lua').live_grep_native()<CR>",
    { noremap = true, silent = true, cwd=pwd, }
)

vim.api.nvim_set_keymap('n', '<leader>gg',
    "<cmd>lua require('fzf-lua').git_files()<CR>",
    { noremap = true, silent = true, cwd=pwd, }
)
