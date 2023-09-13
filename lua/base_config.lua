local opt = vim.opt
local wo = vim.wo

opt.number = true
opt.relativenumber = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
wo.wrap = false
vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.scrolloff = 5
opt.sidescrolloff = 5
opt.hlsearch = true
opt.incsearch = true
opt.mouse = 'a'
opt.clipboard:append('unnamedplus')
opt.expandtab = true
opt.ignorecase = true
opt.smartcase = true
opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true
