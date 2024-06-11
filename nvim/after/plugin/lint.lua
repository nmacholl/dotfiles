-- Setup
require("lint").linters_by_ft = {
    python = { "mypy", "ruff", },
}

vim.api.nvim_create_autocmd({ "BufReadPost", "BufWritePost" }, {
    callback = function()
        require("lint").try_lint()
        require("lint").try_lint("codespell")
    end,
})

-- LSP Signs
vim.fn.sign_define(
    "DiagnosticSignError",
    { texthl = "DiagnosticSignError", text = "❯", numhl = "DiagnosticSignError" }
)
vim.fn.sign_define(
    "DiagnosticSignWarn",
    { texthl = "DiagnosticSignWarn", text = "❯", numhl = "DiagnosticSignWarn" }
)
vim.fn.sign_define(
    "DiagnosticSignInfo",
    { texthl = "DiagnosticSignInfo", text = "", numhl = "DiagnosticSignInfo" }
)
vim.fn.sign_define(
    "DiagnosticSignHint",
    { texthl = "DiagnosticSignHint", text = "❯", numhl = "DiagnosticSignHint" }
)
