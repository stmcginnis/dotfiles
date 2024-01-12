return {
	{
		"williamboman/mason.nvim",
        lazy = false,
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
        },
	},
	{
		"neovim/nvim-lspconfig",
        lazy = false,
		config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
			lspconfig.dockerls.setup({
                capabilities = capabilities
            })
			lspconfig.gopls.setup({
                capabilities = capabilities
            })
			lspconfig.jsonls.setup({
                capabilities = capabilities
            })
			lspconfig.marksman.setup({
                capabilities = capabilities
            })
			lspconfig.pyre.setup({
                capabilities = capabilities
            })
			lspconfig.rust_analyzer.setup({
                capabilities = capabilities
            })
			lspconfig.yamlls.setup({
                capabilities = capabilities
            })
			local opts = {}
			vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
			vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
			vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
			vim.keymap.set('n', '<space>f', function()
				vim.lsp.buf.format { async = true }
			end, opts)
			vim.keymap.set('v', '<leader>f', vim.lsp.buf.format, opts)
			vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, opts)
		end
	}
}
