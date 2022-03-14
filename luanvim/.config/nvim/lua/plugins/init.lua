return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'
  
  -- Colorschemes
  -- use 'EdenEast/nightfox.nvim'
  use 'arcticicestudio/nord-vim'
  use 'danishprakash/vim-yami'

  -- Vim things
  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'
  use 'rust-lang/rust.vim'

  -- Lua things
  use { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" }
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'neovim/nvim-lspconfig'
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind-nvim'
    }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'tami5/lspsaga.nvim', branch = 'nvim6.0' }
  use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons',
      }
  }
  use 'tomlion/vim-solidity'
end)
