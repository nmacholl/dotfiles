-- Configuration
vim.g.selenized_variant = 'normal'
vim.o.background = "dark"
vim.cmd [[
    silent! colorscheme selenized
]]

-- Customizations
vim.api.nvim_set_hl(0, "CursorLine", { bg="#2d5b69", fg="#ed8949",} )
vim.api.nvim_set_hl(0, "Directory", { bg="", fg="#fd9456", bold=true, } )

-- NvimTree
vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg="#f275be", } )
vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { fg="#f275be", } )
vim.api.nvim_set_hl(0, "NvimTreeGitMerge", { fg="#f275be", } )
vim.api.nvim_set_hl(0, "NvimTreeGitRename", { fg="#f275be", } )
vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg="#f275be", } )
vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg="#f275be", } )
vim.api.nvim_set_hl(0, "NvimTreeGitIgnored", { fg="#f275be", } )
