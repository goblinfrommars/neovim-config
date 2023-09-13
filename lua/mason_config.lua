require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    'lua_ls',
    'intelephense',
    'pyright',
    'sqlls',
    'tsserver',
    'html',
    'cssmodules_ls',
    'tailwindcss',
    'jsonls'
  },
  automatic_installation = true,
})
