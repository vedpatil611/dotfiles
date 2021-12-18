vim.g.mapleader = ' '

-- key remap function stolen from ara ara 
local K = vim.api.nvim_set_keymap
local function k (mode, from, to, options)
    	options = options or {}
    	options['noremap'] = true
    	options['silent'] = true
    	K(mode, from, to, options)
end
local n = { noremap = true }
local ns = { noremap = true, silent = true }

-- splits resize
k('n', '<C-l>', ':vertical res +5<CR>')
k('n', '<C-j>', ':vertical res -5<CR>')
k('n', '<C-i>', ':res +5<CR>')
k('n', '<C-k>', ':res +5<CR>')

-- basic utils
k('n', '<C-UP>', ':m-2<CR>')
k('n', '<C-DOWN>', ':m+1<CR>')
k('n', '<C-s>', ':w<CR>')
k('n', '<C-z>', ':u<CR>')

-- nvim tree bindings
k('n', '<C-t>', ':NvimTreeToggle<CR>')
k('n', '<C-f>', ':NvimTreeFocus<CR>')
k('n', '<Leader>r', ':NvimTreeRefresh<CR>')

K('n', '<Leader>c', '<Plug>kommentary_line_default', {})
K('x', '<Leader>c', '<Plug>kommentary_visual_default', {})
