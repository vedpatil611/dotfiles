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

k('n', '<C-t>', ':NvimTreeToggle<CR>')
k('n', '<C-f>', ':NvimTreeFocus<CR>')
k('n', '<Leader>r', ':NvimTreeRefresh<CR>')
