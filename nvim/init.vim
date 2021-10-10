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

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim'
Plug 'tikhomirov/vim-glsl'
Plug 'bling/vim-airline'
Plug 'cohama/lexima.vim'
Plug 'sheerun/vim-polyglot'
Plug 'dart-lang/dart-vim-plugin'

""" Latex plugin
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()

filetype plugin indent on
filetype plugin on
syntax on

let mapleader = " "

let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-z> :u<CR>

nmap <C-UP> :m-2<CR>  
nmap <C-DOWN> :m+1<CR>
nmap <C-s> :w<CR>

nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gD :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gs :call CocAction('jumpDeclaration', 'vsplit')<CR>
nmap <silent> gS :call CocAction('jumpDeclaration', 'split')<CR>
nmap <silent> gr :call CocAction('jumpReferences', 'vsplit')<CR>
nmap <silent> gR :call CocAction('jumpReferences', 'split')<CR>
nmap <silent> gi :call CocAction('jumpImplementation', 'vsplit')<CR>
nmap <silent> gI :call CocAction('jumpImplementation', 'tabe')<CR>

autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
