-- Setup
require("toggleterm").setup{
    autochdir = true,
    shade_filetypes = { "none", "fzf" }
}

local Terminal = require("toggleterm.terminal").Terminal
local big_terminal = Terminal:new({ direction = "float" })
function _big_toggle()
    big_terminal:toggle()
end

-- Shortcuts
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
vim.keymap.set("n", "<leader>T", "<cmd>lua _big_toggle()<CR>")
-- Escape in terminal mode closes window.
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:ToggleTerm<CR>")

-- Let normal window navigation work.
function _G.set_terminal_keymaps()
      local opts = {buffer = 0}
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
      vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
      vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
      vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
    end

