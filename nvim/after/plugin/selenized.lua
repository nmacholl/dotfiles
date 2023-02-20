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

-- Coc Overrides
vim.api.nvim_set_hl(0, "CocFadeOut", { fg="#72898f" } )
vim.api.nvim_set_hl(0, "CocWarningSign", { standout=true, fg="#b58900" } )
vim.api.nvim_set_hl(0, "CocWarningHighlight", { } )
vim.api.nvim_set_hl(0, "CocErrorSign", { standout=true , fg="#cb4b16" } )
vim.api.nvim_set_hl(0, "CocErrorHighlight", { } )
vim.api.nvim_set_hl(0, "CocInfoSign", { standout=true , fg="#268bd2" } )
vim.api.nvim_set_hl(0, "CocInfoHighlight", { } )
vim.api.nvim_set_hl(0, "CocHintSign", { standout=true , fg="#839496" } )
vim.api.nvim_set_hl(0, "CocHintHighlight", { } )
