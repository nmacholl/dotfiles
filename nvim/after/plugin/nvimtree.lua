-- Setup
require("nvim-tree").setup(
    {
        sync_root_with_cwd = false,
        reload_on_bufenter = true,
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
            indent_width = 1,
        },
        view = {
            width = 50,
        },
        update_focused_file = {
            enable = true,
            update_root = false,
        }
    }
)

-- Shortcuts
vim.keymap.set("n", "<C-n>", ":NvimTreeFocus<CR>")
vim.keymap.set("n", "<C-t>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<C-f>", ":NvimTreeFindFile<CR>")
