return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lsp_config")
        end,
    },
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({
                event = "VeryLazy"
            })
        end
    },
    { "williamboman/mason-lspconfig.nvim", event = "VeryLazy" }
}
