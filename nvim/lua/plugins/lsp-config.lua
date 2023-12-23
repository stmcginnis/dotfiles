return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"dockerls",
					"gopls",
					"jsonls",
					"marksman",
					"pyre",
					"rust_analyzer",
					"yamlls",
				},
				automatic_installation = true
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.api.nvim_create_autocmd('FileType', {
				pattern = 'sh',
				callback = function()
					vim.lsp.start({
						name = 'bash-language-server',
						cmd = { 'bash-language-server', 'start' },
					})
				end,
			})
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.dockerls.setup({})
			lspconfig.gopls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.marksman.setup({})
			lspconfig.pyre.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.yamlls.setup({})
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
