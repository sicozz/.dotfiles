syntax on
set noerrorbells                        " Disables the bell sound on error
set mouse=a				                " Enables mouse integration
set tabstop=4 softtabstop=4             " Sets tabs to 4 spaces
set shiftwidth=4                        " Sets shifs indent to 4 spaces
set expandtab                           " Enables real copy and paste
"set smartindent                         " Uses autoindent
set nu                                  " Puts the line numbers at the left
set number relativenumber               " Line numbers are relative
set nowrap                              " Disables auto-linewrap
set noswapfile                          " Doesn't creates .swaps
set nobackup                            " Doesn't creates .backup
set undodir=~/.config/nvim/undodir      " Sets directory for undotree
set undofile                            " Creates undofiles
set hidden                              " Different buffers at a time so you can swap between them whitout saving
set nohlsearch                          " Not more nasty search highlith
set incsearch                           " Incremently highlights search matches
set guicursor=                          " Always block cursor
set scrolloff=8                         " It scrollosff with n lines span
set colorcolumn=80                      " Sets limit line with color
"set signcolumn=yes                      " Left column for special messages

" Start pluggin manager
call plug#begin('~/.config/nvim/plugged')
" colorscheme
" Plug 'morhetz/gruvbox'
" Plug 'sainnhe/gruvbox-material'
" Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'felipec/vim-felipec'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Utils
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'dbeniamine/cheat.sh-vim'

" Autocomple
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File search within git repos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
" End pluggin manager

" Set colorscheme style
" " For gruvbox
" let g:gruvbox_material_background = 'hard' 
" let g:gruvbox_material_statusline_style = 'original'
" "

" " For solarized
" let g:solarized_termcolors=16
" let g:solarized_visibility="high"
" let g:solarized_contrast="high"
" colorscheme solarized
" set background=dark
" "

" " For ayu
" set termguicolors
" let ayucolor="light"  " for light version of theme
" colorscheme ayu
" "

colorscheme felipec
let g:lightline = { 'colorscheme': 'felipec' }

" Keybindings
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

vnoremap <leader>p "_dP
nnoremap <C-p> :GFiles<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
