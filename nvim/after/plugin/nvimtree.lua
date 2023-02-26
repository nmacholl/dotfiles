-- Setup
require("nvim-tree").setup(
    {
        sync_root_with_cwd = true,
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

-- Automations
local function open_nvim_tree(data)
    local no_name = data.file == "" and vim.bo[data.buf].buftype == ""
    local real_file = vim.fn.filereadable(data.file) == 1

    if not no_name and real_file then
        require("nvim-tree.api").tree.toggle({
            file_file = true,
            update_root = true,
            focus = false,
        })
    else
        require("nvim-tree.api").tree.open()
    end
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
