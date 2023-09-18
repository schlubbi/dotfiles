vim.g.mapleader = ","
vim.keymap.set('n', '<M-j>', ':resize -2<CR>')
vim.keymap.set('n', '<M-k>', ':resize +2<CR>')
vim.keymap.set('n', '<M-h>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<M-l>', ':vertical resize +2<CR>')

vim.keymap.set('n', '<leader>t', ':Files<CR>')

--vim.g.node_host_prog = "/usr/bin/node"

require("lazy.config")

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

require("mason-lspconfig").setup {
    ensure_installed = {
	    "arduino_language_server",
	    "clangd",
	    "clojure_lsp",
	    "codeqlls",
	    "cssls",
	    "dockerls",
	    "gopls",
	    "graphql",
	    "jsonls",
	    "lua_ls",
	    "rubocop",
	    "rust_analyzer",
    	    "sorbet",
    },
}
