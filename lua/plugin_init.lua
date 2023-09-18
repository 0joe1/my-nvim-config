-- lazy nvim

-- 准备lazy.nvim模块
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- 将 lzaypath 加入到 runtimepath中
-- nvim进行路径搜索的时候，除已有的路径，还会从prepend的路径中查找
vim.opt.rtp:prepend(lazypath)

-- 加载lazy.nvim模块
require("lazy").setup("plugins")
