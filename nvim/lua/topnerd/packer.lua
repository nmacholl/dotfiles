return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- Tree Sitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
    use "nvim-treesitter/nvim-treesitter-context"

    -- NERDTree
    use "preservim/nerdtree"
    use "ryanoasis/vim-devicons"

    -- Undo Tree
    use "mbbill/undotree"

    -- Fuzzy Finder
    use  { "junegunn/fzf", run = "./install --bin", }

    -- Color Theme
    use {
        'loganswartz/selenized.nvim',
        requires = {
            'rktjmp/lush.nvim',
        },
    }

    -- Airline
    -- use "vim-airline/vim-airline"
    -- use { "vim-airline/vim-airline-themes", after="vim-airline" }
    use {
        'nvim-lualine/lualine.nvim',
        config = function()
            require'lualine'.setup {
                options = {
                    theme = "auto", -- or "selenized", but "auto" should pick it up.
                    -- Omitting the "theme" option entirely will also default to "auto"
                },
            }
        end,
    }

    -- Git
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"

    -- Bufferline
    use "akinsho/bufferline.nvim"

    -- CoC
    use { "neoclide/coc.nvim", branch="release" }

end
)
