local lsp = require('lsp-zero')


lsp.preset("recommended")
lsp.ensure_installed({
	'bashls',
	'clangd',
	'cmake',
	'fortls',
	'jsonls',
	'pyright',
--	'pylsp',
--	'ruff_lsp',
	'rust_analyzer',
	'yamlls'

})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(true)
  end

  vim.keymap.set("n", "I", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "K", "<C-u>")

end)

lsp.format_on_save({
    servers = {
--        ['pyright'] = {'python'},
        ['rust_analyzer'] = {'rust'},
    }
})


lsp.setup()

local lspconfig = require('lspconfig')

lspconfig.clangd.setup {
    cmd={'/home/schile/.local/share/nvim/mason/bin/clangd', '--query-driver=/usr/bin/gcc', '--log=verbose'}
}
lspconfig.cmake.setup {}
lspconfig.fortls.setup {}
lspconfig.jsonls.setup {}
lspconfig.pyright.setup {}
--lspconfig.pylsp.setup {}
--lspconfig.ruff_lsp.setup {}
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

vim.lsp.set_log_level("off")
