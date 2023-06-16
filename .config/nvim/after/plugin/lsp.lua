local lsp = require('lsp-zero')

lsp.preset("recommended")
lsp.ensure_installed({
	'bashls',
	'clangd',
	'cmake',
	'fortls',
	'jsonls',
	'pyright',
	'rust_analyzer',
	'yamlls'

})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  vim.keymap.set("n", "I", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "K", "<C-u>")

end)

lsp.format_on_save({
    servers = {
        ['pyright'] = {'python'},
        ['rust_analyzer'] = {'rust'},
    }
})


lsp.setup()

local lspconfig = require('lspconfig')

lspconfig.clangd.setup {}
lspconfig.cmake.setup {}
lspconfig.fortls.setup {}
lspconfig.jsonls.setup {}
lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.yamlls.setup {}

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp_action.tab_complete(),
    ['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
  }
})
