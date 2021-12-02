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
