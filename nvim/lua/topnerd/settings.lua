-- NetRW
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- File Navigation Numbers
vim.opt.nu = true
vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"

-- Tab Behavior
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Backspace
vim.opt.backspace="indent,eol,start"

-- Disable Backups/Swaps
vim.opt.swapfile = false
vim.opt.backup = false

-- Highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Whitespace Replacement
vim.opt.list = true
vim.opt.listchars = {
    lead = "\\u2591",
    trail = "\\u2591",
    nbsp = "\\u2581",
}

-- Undo File
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undo"

-- Misc
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true
vim.opt.updatetime = 50
