local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require('cmp_nvim_lsp').default_capabilities()
lspconfig.pyright.setup{
    capabilities = capabilities
}
lspconfig.lua_ls.setup{
    capabilities = capabilities
}

lspconfig.clangd.setup{
    capabilities = capabilities
}



