-- Helper Function
local function should_attach(bufnr)
    local bufname = vim.fn.bufname(bufnr)

    if string.find(bufname, "^fugitive://") ~= nil then
        return false
    end

    if string.find(bufname, "^NvimTree") ~= nil then
        return false
    end

    return true
end

-- Format on Save
local on_attach = function(client)
    if client.server_capabilities.document_formatting then
        vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
   end
end

-- Setup
local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        -- Bash
        null_ls.builtins.code_actions.shellcheck,

        -- Python
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.diagnostics.ruff,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,

        -- Rust
        null_ls.builtins.formatting.rustfmt,
    },
    on_attach = on_attach,
    should_attach = should_attach,
})
