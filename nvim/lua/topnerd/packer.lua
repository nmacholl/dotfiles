return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- Tree Sitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
    use "nvim-treesitter/nvim-treesitter-context"

    -- NVIM Tree
    use { 'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional, for file icons
            },
            tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }

    -- Aerial
    use "stevearc/aerial.nvim"

    -- Undo Tree
    use "mbbill/undotree"

    -- Fuzzy Finder
    -- use  { "junegunn/fzf", run = "./install --bin", }
    use  { "ibhagwan/fzf-lua",
            requires = { "nvim-tree/nvim-web-devicons" }
         }

    -- Color Theme
    use {
        "loganswartz/selenized.nvim",
        requires = {
            "rktjmp/lush.nvim",
        },
    }

    -- Lualine
    use "nvim-lualine/lualine.nvim"

    -- Git
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"

    -- Bufferline
    use "akinsho/bufferline.nvim"

    -- CoC
    use { "neoclide/coc.nvim", branch="release" }

    -- Toggleterm
    use {"akinsho/toggleterm.nvim", tag = '*'}
end
)
