--[[ local g = vim.go
local o = vim.o
local b = vim.bo
local w = vim.wo

w.number        = true
g.hlsearch      = false
g.smartindent   = true
g.autoindent	= true
g.tabstop       = 4
g.softtabstop   = 4
g.shiftwidth    = 4
b.expandtab     = true
w.wrap          = false
g.smartcase     = true
b.undofile      = true
-- o.undodir       = '~/.vim/undodir//'
g.splitright    = true
g.splitbelow	= true

vim.g.kommentary_create_default_mappings = false ]]

vim.cmd([[

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

filetype plugin on
syntax on

]])
