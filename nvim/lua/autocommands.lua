vim.cmd([[

" clear all autocommands
" autocmd!

autocmd InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = ' » ', highlight = "Comment", enabled = { "TypeHint", "ChainingHint", "ParameterHint" } }

]])
