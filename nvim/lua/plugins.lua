require('packer').startup(function() 
	use 'wbthomason/packer.nvim'				-- packer can manage itself as an optional plugin

	-- LSP
	use 'neovim/nvim-lspconfig'					-- configuring lsp
	use 'hrsh7th/nvim-compe'					-- auto completion
	use 'nvim-lua/lsp_extensions.nvim'			-- lsp extension for inlay hints

	-- Theme
	use 'morhetz/gruvbox'						-- colorscheme
	use 'hoob3rt/lualine.nvim'					-- statusline
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}											-- better highlighting
	use 'windwp/nvim-autopairs'					-- automatically close brackets
	use 'Yggdroot/indentLine'					-- indent lines
	use 'lukas-reineke/indent-blankline.nvim'	-- indent blank lines

	use 'kyazdani42/nvim-tree.lua'				-- file tree
end)

require('plugin-conf.lsp-conf')
require('plugin-conf.nvim-compe-conf')
require('plugin-conf.nvim-tree-conf')

