return require('packer').startup(function()
  -- Plugin manager
  use 'wbthomason/packer.nvim'
  
  -- Colorschemes
  use 'EdenEast/nightfox.nvim'
  use 'bluz71/vim-nightfly-guicolors'
  -- use 'arcticicestudio/nord-vim'
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
  use 'onsails/lspkind-nvim'

  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

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
