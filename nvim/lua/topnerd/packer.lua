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

    -- Lualine
    use 'nvim-lualine/lualine.nvim'

    -- Git
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"

    -- Bufferline
    use "akinsho/bufferline.nvim"

    -- CoC
    use { "neoclide/coc.nvim", branch="release" }
end
)
