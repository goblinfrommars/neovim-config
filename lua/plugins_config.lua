vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                          -- initial configuration
  use "rebelot/kanagawa.nvim"                           -- theme
  use 'prichrd/netrw.nvim'                              -- file explorer
  use 'mhinz/vim-startify'                              -- startup
  use 'nvim-tree/nvim-web-devicons'                     -- web-dev-icons
  use 'preservim/nerdtree'                              -- file explorer
  use 'b3nj5m1n/kommentary'                             -- comments
  use { 'neoclide/coc.nvim', branch = 'release' }       -- coc vim
  use { "akinsho/toggleterm.nvim", tag = '*' }          -- terminal
  use('jose-elias-alvarez/null-ls.nvim')                -- prettier
  use('MunifTanjim/prettier.nvim')                      -- prettier
  use 'shaunsingh/solarized.nvim'                       -- solarized

  use { 'nvim-telescope/telescope.nvim', tag = '0.1.2', -- telescope
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use { -- Mason lspconfig
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use { -- treesitter
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use { --ariline
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use { --tabline
    'kdheepak/tabline.nvim', requires = { { 'hoob3rt/lualine.nvim', opt = true },
    { 'kyazdani42/nvim-web-devicons', opt = true } }
  }
end)
