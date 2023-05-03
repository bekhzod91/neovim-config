local packer_bootstrap = require("plugins.packer").ensure_packer()

require("mappings")


-- Linenumber configration
vim.cmd[[set relativenumber]]

-- Theme configuration
vim.cmd[[colorscheme tokyonight]]

-- NvimTree configuration
require("plugins.nvim-tree").setup()

-- Tabs configuration
require("plugins.barbar").setup()

-- LuaLine configration
require('plugins.lualine').setup()

-- Syntax highlighting configuration
require('plugins.treesitter').setup()

-- Telescope configuration
require('plugins.telescope').setup()


return require('packer').startup(function(use)
  -- Packar
  use 'wbthomason/packer.nvim'

  -- Themes package
  use 'folke/tokyonight.nvim'

  -- NvimTree package
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
  }
  
  -- Tabs package
  use {
    'romgrk/barbar.nvim',
    requires = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    }
  }


  -- Lualine package
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons', opt = true
    }
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  
  -- Syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

