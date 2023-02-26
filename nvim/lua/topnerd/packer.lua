return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- Tree Sitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
    use "nvim-treesitter/nvim-treesitter-context"

    -- NVIM Tree
    use { 'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',     -- optional, for file icons
        },
        tag = 'nightly'                        -- optional, updated every week. (see issue #1193)
    }

    -- Aerial
    use "stevearc/aerial.nvim"

    -- Undo Tree
    use "mbbill/undotree"

    -- Fuzzy Finder
    -- use  { "junegunn/fzf", run = "./install --bin", }
    use { "ibhagwan/fzf-lua",
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

    -- AutoPairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- LSP Mason
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate",
    }

    -- LSP Configuration
    use {
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
    }

    -- LSP Linting/Formatting
    use {
        "nvim-lua/plenary.nvim",
        "jose-elias-alvarez/null-ls.nvim",
    }

    -- LSP Completion
    use {
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "onsails/lspkind.nvim",
    }

    -- Snippet
    use {
        "hrsh7th/vim-vsnip",
    }

    -- Git
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"

    -- Bufferline
    use "akinsho/bufferline.nvim"
end
)
