return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-treesitter.configs").setup({
            sys_install = true,
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection   = "v",
                    node_incremental = "<CR>",
                    node_decremental = "<BS>",
                    scope_incremental= "<TAB>"
                },
            },
            highlight = {
                enable = true,
            },
        })
    end,
}
