require('nvim-treesitter.configs').setup({
	ensure_installed = "all",
	highlight = {
		enable = true
	},
	indent = {
		enable = true
	},
	autotag = {
		enable = true,
	},
})

vim.cmd([[

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

]])
