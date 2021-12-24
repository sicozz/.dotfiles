if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'                   " Git from vim
Plug 'mbbill/undotree'                      " File history
Plug 'christoomey/vim-tmux-navigator'       " Vim/tmux navigation fusion
Plug 'rust-lang/rust.vim'                   " Rustlang support

if has("nvim")
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
  Plug 'onsails/lspkind-nvim'
  " Plug 'windwp/nvim-autopairs'
  " Plug 'windwp/nvim-ts-autotag'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
endif

call plug#end()
