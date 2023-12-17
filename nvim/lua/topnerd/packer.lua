return require("packer").startup(function(use)
    -- Packer
    use("wbthomason/packer.nvim")

    -- Tree Sitter
    use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
    use("nvim-treesitter/nvim-treesitter-context")

    -- Color Theme
    use({
        "loganswartz/selenized.nvim",
        requires = {
            "rktjmp/lush.nvim",
        },
    })

    -- NVIM Tree
    use({
        "nvim-tree/nvim-tree.lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    -- Lua Line
    use({
        "nvim-lualine/lualine.nvim",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    -- Buffer Line
    use({
        "akinsho/bufferline.nvim",
        tag = "*",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    -- Git
    use({
        "tpope/vim-fugitive",
    })
    use({
        "airblade/vim-gitgutter",
        branch = "main",
    })

    -- Aerial
    use({
        "stevearc/aerial.nvim",
    })

    -- FZF
    use({
        "ibhagwan/fzf-lua",
        requires = {
            "nvim-tree/nvim-web-devicons",
        },
    })

    -- Mundo
    use({
        "simnalamburt/vim-mundo",
    })

    -- Autopairs
    use({
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({})
        end,
    })

    -- Copilot
    use({
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = { enabled = false },
                panel = { enabled = false },
            })
        end,
    })
    use({
        "zbirenbaum/copilot-cmp",
        after = { "copilot.lua" },
        config = function()
            require("copilot_cmp").setup()
        end,
    })

    -- LSP
    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            -- Null LS
            { "nvimtools/none-ls.nvim", requires = { "nvim-lua/plenary.nvim" } },
            { "jay-babu/mason-null-ls.nvim" },
            -- LSP Support
            { "neovim/nvim-lspconfig" },
            -- Autocompletion
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-cmdline" },
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-nvim-lua" },
            { "hrsh7th/cmp-path" },
            { "L3MON4D3/LuaSnip" },
            { "f3fora/cmp-spell" },
            { "onsails/lspkind.nvim" },
            -- Comparator
            { "lukas-reineke/cmp-under-comparator" },
        },
    })
end)
