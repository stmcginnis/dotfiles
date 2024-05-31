return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
        "gbprod/none-ls-shellcheck.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.codespell,
                require("none-ls.diagnostics.ruff"),
                require("none-ls-shellcheck.diagnostics"),
                require("none-ls-shellcheck.code_actions"),
            }
        })

        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end
}
