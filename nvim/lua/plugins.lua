require('packer').startup(function() 
	use 'wbthomason/packer.nvim'			-- packer can manage itself as an optional plugin

	-- LSP
	use 'neovim/nvim-lspconfig'			-- configuring lsp
	use 'hrsh7th/nvim-compe'			-- auto completion

	-- Theming
	use 'morhetz/gruvbox'				-- colorscheme
	use 'hoob3rt/lualine.nvim'			-- statusline
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}						-- better highlighting
	use 'windwp/nvim-autopairs'			-- automatically close brackets
	use 'Yggdroot/indentLine'			-- indent lines
	use 'lukas-reineke/indent-blankline.nvim'	-- indent blank lines
	use 'norcalli/nvim-colorizer.lua'		-- highlight colors

	use 'kyazdani42/nvim-tree.lua'			-- file tree
end)

require('plugin-conf.lsp-conf')
require('plugin-conf.nvim-compe-conf')

vim.g.gruvbox_contrast_dark = 'hard'
vim.cmd("colorscheme gruvbox")
vim.cmd("set background=dark")
vim.g.gruvbox_transparent_bg = 1

vim.cmd("highlight Normal ctermbg=none")
vim.cmd("highlight NonText ctermbg=none")
