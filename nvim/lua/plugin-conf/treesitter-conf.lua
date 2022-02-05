require('nvim-treesitter.configs').setup({
	ensure_installed = "all",
	ignore_install = { "php", "phpdoc" },
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

-- vim.cmd([[

-- set foldmethod=expr
-- set foldexpr=nvim_treesitter#foldexpr()

-- ]])
