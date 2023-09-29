return {
    {
        event = "VeryLazy",
        "tpope/vim-fugitive",
            cmd = "Git",
        config = function ()
            vim.cmd.cnoreabbrev([[git Git]])
            vim.cmd.cnoreabbrev([[gp Git push]])
        end
    },
    {
        event = "VeryLazy",
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup()
        end
    },
    {
        event = "VeryLazy",
        "rhysd/conflict-marker.vim",
    },
}
