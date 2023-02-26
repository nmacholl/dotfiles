-- Setup
require('fzf-lua').setup{
    winopts = {
        height = 0.90,
        width = 0.90,
    },
}

function fzf_files()
    local cwd = vim.fn.getcwd()
    require('fzf-lua').files(
        {
            cwd = cwd,
            noremap = true,
            slient = true,
        }
    )
end

function fzf_grep_native()
    local cwd = vim.fn.getcwd()
    require('fzf-lua').live_grep_resume(
        {
            cwd = cwd,
            noremap = true,
            slient = true,
        }
    )
end

function fzf_git_files()
    local cwd = vim.fn.getcwd()
    require('fzf-lua').git_files(
        {
            cwd = cwd,
            noremap = true,
            slient = true,
        }
    )
end

function fzf_grep_word()
    local cwd = vim.fn.getcwd()
    require('fzf-lua').grep_cword(
        {
            cwd = cwd,
            noremap = true,
            slient = true,
        }
    )
end

-- Shortcuts
vim.api.nvim_set_keymap('n', '<leader><tab>', "<cmd>lua fzf_files()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>fr', "<cmd>lua fzf_grep_native()<CR>", {})
vim.api.nvim_set_keymap('n', '<leader>fg', "<cmd>lua fzf_git_files()<CR>", {})
