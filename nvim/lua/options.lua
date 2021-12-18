local g = vim.go
local o = vim.o
local b = vim.bo
local w = vim.wo

w.number        = true
g.hlsearch      = false
g.smartindent   = true
g.tabstop       = 4
g.softtabstop   = 4
g.shiftwidth    = 4
b.expandtab     = true
w.wrap          = false
g.smartcase     = true
b.undofile      = true
o.undodir       = '~/.vim/undodir//'
g.splitright    = true
g.splitbelow	= true

vim.cmd("filetype plugin indent on")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")
