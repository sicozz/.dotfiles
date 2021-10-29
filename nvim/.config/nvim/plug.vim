if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-fugitive'                   " Git from vim
"Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'                      " File history
Plug 'christoomey/vim-tmux-navigator'       " Vim/tmux navigation fusion
Plug 'rust-lang/rust.vim'                   " Rustlang support
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimfiler.vim'

if has("nvim")
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
  Plug 'nvim-lua/completion-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'
endif

call plug#end()
