local lsp = require('lsp-zero')

lsp.preset("recommended")
lsp.ensure_installed({
	'bashls',
	'clangd',
	'cmake',
	'fortls',
	'jsonls',
	'pylsp',
	'rust_analyzer',
	'yamlls'

})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
--  vim.keymap.set("n", "I", function() vim.lsp.buf.hover() end, opts)
--  vim.keymap.set("n", "K", "<C-u>")
end)

-- vim.lsp.inlay_hint(0, true)

lsp.setup()

local lspconfig = require('lspconfig')

lspconfig.bashls.setup {}
lspconfig.clangd.setup {}
lspconfig.cmake.setup {}
lspconfig.fortls.setup {}
lspconfig.jsonls.setup {}
lspconfig.pylsp.setup {
    plugins = {
        flake8 = {
            enabled = true,
            ignore = { 'E501', 'E231' },
            maxLineLength = 120
        },
        pycodestyle = {
            enabled = false,
            maxLineLength = 120
        }
    }
}
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
