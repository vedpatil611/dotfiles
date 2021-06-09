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
set undofile
set incsearch
set splitright splitbelow
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'scrooloose/syntastic'
Plug 'neoclide/coc.nvim'
Plug 'autozimu/LanguageClient-neovim'
Plug 'tikhomirov/vim-glsl'
Plug 'bling/vim-airline'
Plug 'cohama/lexima.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

filetype plugin indent on
filetype plugin on
syntax on

let mapleader = " "

let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox

if executable('rg')
    let g:rg_derive_root='true'
endif

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:netrw_browse_split=2
let g:netrw_banner = 0

let g:airline#extensions#tabline#enabled = 1

let g:LanguageClient_serverCommands = {
\ 'rust': ['rust-analyzer'],
\ }

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-z> :u<CR>

nmap <C-UP> :m-2<CR>  
nmap <C-DOWN> :m+1<CR>
nmap <C-s> :w<CR>

autocmd! BufNewFile,BufRead *.vs,*.fs set ft=glsl
