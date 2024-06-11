-- Setup
require("conform").setup({
    formatters_by_ft = {
        python = { "ruff_format", "ruff_fix", "black" },
        rust = { "rustfmt" },
        markdown = {},
    },
    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
