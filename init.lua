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
	'kyazdani42/nvim-web-devicons'
    },
  }

  -- Lualine package
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
	'kyazdani42/nvim-web-devicons', opt = true
    }
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

