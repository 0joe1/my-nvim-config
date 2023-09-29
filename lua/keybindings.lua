vim.g.mapleader = " "

-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
    if type(mode) == 'table' then
        for i = 1, #mode do
            map(mode[i], lhs, rhs, opts)
        end
        return
    end
    local options = { noremap = true , silent = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- 上下移动选中的文本
map("v","J",":move '>+1<CR>gv")
map("v","K",":move '<-2<CR>gv")

-- 小范围翻页
map({"n","i"},"<C-j>","4j")
map({"n","i"},"<C-k>","4k")

-- 保存并退出
map("n","Z","ZZ")
map("n","Q",":wa!<CR>:qa!<CR>")


-- F家族

map({"v", "n", "i"}, "<F2>", "<cmd>BufferLineCyclePrev<CR>")
map({"v", "n", "i"}, "<F3>", "<cmd>BufferLineCycleNext<CR>")
map({"v","n","i","t"},"<F4>","<cmd>wa<CR>")
