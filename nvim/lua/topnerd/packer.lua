return require("packer").startup(function(use)
    -- Packer
    use "wbthomason/packer.nvim"

    -- Tree Sitter
    use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
    use "nvim-treesitter/nvim-treesitter-context"

    -- NVIM Tree
    use { "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        tag = "nightly"                    -- optional, updated every week. (see issue #1193)
    }

    -- Aerial
    use "stevearc/aerial.nvim"

    -- Autopairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

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

    -- LSP
    use {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            -- LSP Support
            { "neovim/nvim-lspconfig" }, -- Required
            {
                -- Optional
                "williamboman/mason.nvim",
                run = function()
                    pcall(vim.cmd, "MasonUpdate")
                end,
            },
            { "williamboman/mason-lspconfig.nvim" }, -- Optional

            -- Autocompletion
            { "hrsh7th/nvim-cmp" },     -- Required
            { "hrsh7th/cmp-nvim-lsp" }, -- Required
            { "L3MON4D3/LuaSnip" },     -- Required
            -- Sources
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-path" },
            { "f3fora/cmp-spell" },
            { "onsails/lspkind.nvim" },
        }
    }

    -- LSP Completion
    use {
        "hrsh7th/nvim-cmp",
    }

    -- LSP Sources
    use {
        "petertriho/cmp-git",
        "hrsh7th/cmp-omni",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
    }

    -- Snippet
    use {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip",
    }

    -- Git
    use "tpope/vim-fugitive"
    use "airblade/vim-gitgutter"

    -- Bufferline
    use "akinsho/bufferline.nvim"
end
)
