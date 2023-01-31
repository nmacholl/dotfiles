-- Shortcuts
vim.keymap.set("n", "<C-t>", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")
vim.keymap.set("n", "<C-n>", ":NERDTreeFocus<CR>")

-- Options
vim.g.NERDTreeShowHidden = true
vim.g.NERDTreeMinimalUI = true
vim.g.NERDTreeMinimalMenu= true
vim.g.NERDTreeNaturalSort = true
vim.g.NERDTreeChDirMode = 2

-- Open NERDTree if no file is opened directly.
vim.api.nvim_create_autocmd("StdinReadPre", {
    command = "let s:std_in = 1",
})
vim.api.nvim_create_autocmd("VimEnter", {
    command = "if argc() == 0 && !exists('s:stdin') | NERDTreeVCS | endif",
})
