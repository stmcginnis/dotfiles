return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = {
				  "c", "lua", "vim", "vimdoc", "query",
				  "elixir", "heex", "javascript", "html",
				  "go", "bash", "dockerfile", "ini",
				"json", "make", "python", "rust", "yaml"
			},
	        sync_install = false,
		    highlight = { enable = true },
			indent = { enable = true }
		})
	end
}
