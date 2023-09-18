local set = vim.opt

set.clipboard = "unnamedplus"
set.mouse = 'a'
set.number = true

set.encoding  = "UTF-8"

-- 空格与tab
set.tabstop     =  4
set.softtabstop =  4
set.shiftwidth  =  4
set.expandtab   =  true

-- 显示左侧图标指示列
-- set.signcolumn  =  "yes"

-- 搜索
set.hlsearch    =  true
set.incsearch   =  true

-- C语言缩进
set.cinoptions  = {"(0", whileScope , WhileScope , g0}

-- 特殊字符提醒
set.list        = true
set.listchars   = {tab = '▸ ', trail = '·' , extends = '❯' , precedes = '❮' }
set.showbreak   = ''

-- 相关文件保存点
set.undofile    = true
set.undodir     = '/tmp/nvim//'
set.backupdir   = '/tmp/nvim//'
set.directory   = '/tmp/nvim//'

-- 键盘快捷键连击时间
set.timeoutlen  = 400

-- 使用增强状态栏插件后不再需要 vim 的模式提示
set.showmode    = false

