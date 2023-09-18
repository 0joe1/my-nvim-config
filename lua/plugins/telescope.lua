return {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
-- or                              , branch = '0.1.x',
      cmd = "Telescope",
      dependencies = { 'nvim-lua/plenary.nvim' },
      keys = {
          {"<leader>u", "<cmd>Telescope find_files initial_mode=insert<CR>",desc = "find_file"},
          {"<leader>o", "<cmd>Telescope oldfiles<CR>",desc="find_resent_opened_file"},
          {"gd",":Telescope lsp_definitions<CR>",desc="goto_definition"},
          {"gr",":Telescope lsp_references<CR>",desc="goto_reference"},
      }
}
