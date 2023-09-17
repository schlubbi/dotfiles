return {
	{ "shaunsingh/nord.nvim" },
	{ "junegunn/fzf", dir = "~/.fzf", build = "./install --all" },
	{ "junegunn/fzf.vim" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function () 
			local configs = require("nvim-treesitter.configs")

			configs.setup({
				ensure_installed = { "c", "lua", "vim", "query", "elixir", "heex", "javascript", "html", "ruby" },
				sync_install = false,
				highlight = { enable = true },
				indent = { enable = true },  
			})
		end
 },
}
