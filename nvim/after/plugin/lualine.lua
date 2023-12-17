-- Setup
require("lualine").setup({
    options = {
        theme = "selenized",
    },
    extensions = {
        "aerial",
        "fugitive",
        "fzf",
        "mundo",
        "nvim-tree",
    },
    sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "searchcount", "location" },
        lualine_z = { "mode" },
    },
})
