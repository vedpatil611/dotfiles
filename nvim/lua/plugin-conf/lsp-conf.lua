local nvim_lsp = require('lspconfig')

-- Capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
	local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
	local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

	--Enable completion triggered by <c-x><c-o>
	buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

	-- Mappings.
	local opts = { noremap=true, silent=true }

	-- Better function to set mappings
	local function bk(from, to)
		buf_set_keymap('n', from, to, opts)
	end

	bk('<gd>' , ':lua vim.lsp.buf.definition()<CR>')
	bk('<gD>' , ':lua vim.lsp.buf.declaration()<CR>')
	bk('<gr>' , ':lua vim.lsp.buf.references()<CR>')
	bk('<gi>' , ':lua vim.lsp.buf.implementation()<CR>')
	bk('<K>'  , ':lua vim.lsp.buf.hover()<CR>')
	bk('<C-k>', ':lua vim.lsp.buf.signature_help()<CR>')
	bk('<C-n>', ':lua vim.lsp.diagnostic.goto_prev()<CR>')
	bk('<C-p>', ':lua vim.lsp.diagnostic.goto_next.()<CR>')
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = {
	'ccls'          ,
	'pyright'       ,
	'rust_analyzer' ,
	'tsserver'      ,
}
for _, lsp in ipairs(servers) do
  	nvim_lsp[lsp].setup({
		capabilities = capabilities,
		on_attach    = on_attach,
	})
end
