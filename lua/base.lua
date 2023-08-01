local opt = vim.opt
local wo = vim.wo
local tabwidth = 2

opt.number = true
opt.relativenumber = true
opt.tabstop = tabwidth
opt.softtabstop = tabwidth
opt.shiftwidth = tabwidth
opt.termguicolors = true
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
opt.signcolumn = 'yes'
opt.list = true
opt.cursorline = true

vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 300
    })
  end
})
