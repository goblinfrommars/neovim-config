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

require('plugins')
require('p-mason')
require('p-lsp')
require('p-tree')
require('color')
require('p-comment')
require('p-autopairs')
require('airline')
require('p-telescope')
