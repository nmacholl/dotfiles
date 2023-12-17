-- Setup
vim.g.mundo_width = 50
vim.g.mundo_right = true
vim.g.mundo_playback_delay = 120

-- Shortcuts
vim.api.nvim_set_keymap("n", "<leader>u", ":MundoToggle<CR>", { silent = true })
