syntax on

set noerrorbells                        " Disables the bell sound on error
set mouse=a				" Enables mouse integration
set tabstop=4 softtabstop=4             " Sets tabs to 4 spaces
set shiftwidth=4                        " Sets shifs indent to 4 spaces
set expandtab                           " Enables real copy and paste
set smartindent                         " Uses autoindent
set nu                                  " Puts the line numbers at the left
set number relativenumber               " Line numbers are relative
set nowrap                              " Disables auto-linewrap
set smartcase                           " Search is 'smart' case sensitive
set noswapfile                          " Doesn't creates .swaps
set nobackup                            " Doesn't creates .backup
set undodir=~/.config/nvim/undodir             " Sets directory for undotree
set undofile                            " Creates undofiles
set incsearch                           " Incremently highlights search matches
set colorcolumn=80                      " Sets limit line with color
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Start pluggin manager
call plug#begin('~/.config/nvim/plugged')
" colorscheme
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'altercation/vim-colors-solarized'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Utils
Plug 'https://github.com/sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'mbbill/undotree'

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

let g:solarized_termcolors=16
let g:solarized_visibility="high"
let g:solarized_contrast="high"
colorscheme solarized
set background=dark

" Keybindings
let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <C-p> :GFiles<CR>
"nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bn<CR>
"nnoremap <S-Tab> :bp<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"" These two still dont work
nmap <silent><leader> gd <Plug>(coc-definition)
nmap <silent><leader> gr <Plug>(coc-references)
