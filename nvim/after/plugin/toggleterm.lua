-- Setup
require("toggleterm").setup{
    autochdir = true,
}
local Terminal = require("toggleterm.terminal").Terminal

-- Big Terminal
local big_terminal = Terminal:new(
    {
        direction = "float",
        float_opts = {
            border = "double",
        }
    }
)
function _big_toggle()
    big_terminal:toggle()
end

-- Shortcuts
vim.keymap.set("n", "<leader>t", "<cmd>lua _big_toggle()<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>:ToggleTermToggleAll<CR>")
