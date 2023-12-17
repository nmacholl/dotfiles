-- Setup
require('fzf-lua').setup{
    winopts = {
        height = 0.90,
        width = 0.90,
    },
}

function fzf_files()
    require('fzf-lua').files(
        {
            noremap = true,
            slient = true,
        }
    )
end

function fzf_grep_native()
    require('fzf-lua').live_grep_resume(
        {
            noremap = true,
            slient = true,
        }
    )
end

function fzf_git_files()
    require('fzf-lua').git_files(
        {
            noremap = true,
            slient = true,
        }
    )
end

function fzf_grep_word()
    require('fzf-lua').grep_cword(
        {
            noremap = true,
            slient = true,
        }
    )
end

-- Shortcuts
vim.api.nvim_set_keymap('n', '<leader><tab>', "<cmd>lua fzf_files()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>fr', "<cmd>lua fzf_grep_native()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua fzf_git_files()<CR>", {})
