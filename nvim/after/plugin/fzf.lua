-- Setup
require("fzf-lua").setup({
    "default",
    winopts = {
        height = 0.95,
        width = 0.95,
    },
})

function fzf_files()
    require("fzf-lua").files({
        noremap = true,
        slient = true,
    })
end

function fzf_grep_native()
    require("fzf-lua").live_grep_resume({
        noremap = true,
        slient = true,
    })
end

function fzf_git_files()
    require("fzf-lua").git_files({
        noremap = true,
        slient = true,
    })
end

function fzf_grep_word()
    require("fzf-lua").grep_cword({
        noremap = true,
        slient = true,
    })
end

-- Shortcuts
vim.api.nvim_set_keymap("n", "<leader><tab>", "<cmd>lua fzf_files()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>lua fzf_grep_native()<CR>", { silent = true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>lua fzf_git_files()<CR>", { silent = true })
