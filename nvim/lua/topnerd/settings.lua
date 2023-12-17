-- NetRW
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- Python Provider
vim.g.python3_host_prog = "/Users/nmacholl/.pyenv/versions/neovim/bin/python3"

-- Ruby Provider
vim.g.loaded_ruby_provider = 0

-- Perl Provider
vim.g.loaded_perl_provider = 0

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

-- White space Replacement
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
vim.opt.cmdheight = 2

-- Spell
--
vim.opt.spell = true
vim.opt.spelllang = { "en_us" }
