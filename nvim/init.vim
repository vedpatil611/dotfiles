set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set directory=~/.vim/swapdir
set undofile
set incsearch nohlsearch
set splitright splitbelow
set nocompatible

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'neoclide/coc.nvim'

Plug 'windwp/nvim-autopairs'
Plug 'windwp/nvim-ts-autotag'
Plug 'Yggdroot/indentLine'

Plug 'kyazdani42/nvim-tree.lua'
Plug 'b3nj5m1n/kommentary'

call plug#end()

filetype plugin indent on
filetype plugin on
syntax on

let mapleader = " "

let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox
let g:gruvbox_transparent_bg=1

highlight Normal ctermbg=none
"highlight NonText ctermbg=none


lua << END
require('lualine').setup({
	options = {
		theme = 'gruvbox'
	}
})

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

require('nvim-autopairs').setup{}

require('nvim-ts-autotag').setup{}

require'nvim-tree'.setup {
	nvim_tree_auto_open = true,
	nvim_tree_auto_close = true,
	nvim_tree_lsp_diagnostics = true,
}

local g = vim.g

g.nvim_tree_git_hl             = 1
g.nvim_tree_group_empty        = 1
g.nvim_tree_indent_markers     = 1
g.nvim_tree_width              = 25
g.nvim_tree_width_allow_resize = 1

local K = vim.api.nvim_set_keymap
local function k (mode, from, to, options)
    	options = options or {}
    	options['noremap'] = true
    	options['silent'] = true
    	K(mode, from, to, options)
end
local n = { noremap = true }

K('n', '<Leader>c', '<Plug>kommentary_line_default', {})
K('x', '<Leader>c', '<Plug>kommentary_visual_default', {})
END

" splits resize
nnoremap <C-L> :vertical res +5<CR>
nnoremap <C-J> :vertical res -5<CR>
nnoremap <C-I> :res +5<CR>
nnoremap <C-K> :res -5<CR>

" File tree
nnoremap <C-t> :NvimTreeToggle<CR>
nnoremap <C-f> :NvimTreeFocus<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>

"utils
nmap <C-UP> :m-2<CR>  
nmap <C-DOWN> :m+1<CR>
nmap <C-s> :w<CR>
nnoremap <C-z> :u<CR>

" Jumpking
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gD :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gs :call CocAction('jumpDeclaration', 'vsplit')<CR>
nmap <silent> gS :call CocAction('jumpDeclaration', 'split')<CR>
nmap <silent> gr :call CocAction('jumpReferences', 'vsplit')<CR>
nmap <silent> gR :call CocAction('jumpReferences', 'split')<CR>
nmap <silent> gi :call CocAction('jumpImplementation', 'vsplit')<CR>
nmap <silent> gI :call CocAction('jumpImplementation', 'tabe')<CR>
