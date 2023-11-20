return {
    {
        "nvim-tree/nvim-tree.lua",
        config = function()
            require("nvim-tree").setup()
        end,
        keys = {
            {"<F9>",":wa<CR>:NvimTreeToggle<CR><C-w>h"}
        },
    }
}
