-- Setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin=1

require("nvim-tree").setup(
    {
        sync_root_with_cwd = true,
        renderer = {
            icons = {
                git_placement = "after",
                show = {
                    modified = false,
                },
                glyphs = {
                    git = {
                        unstaged="○",
                        staged="◉",
                        unmerged="",
                        renamed="",
                        untracked="◌",
                        deleted="",
                        ignored="",
                    },
                },
            },
        },
        update_focused_file = {
            update_root = true,
        }
    }
)

-- Shortcuts
vim.keymap.set("n", "<C-n>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")
