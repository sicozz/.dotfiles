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
Plug 'sjl/badwolf'
" Plug 'altercation/vim-colors-solarized'
" Plug 'felipec/vim-felipec'
" Plug 'lighthaus-theme/vim-lighthaus'
" Plug 'ayu-theme/ayu-vim'
" Plug 'jpo/vim-railscasts-theme'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Utils
Plug 'sheerun/vim-polyglot'                 " Multiple language support
Plug 'tpope/vim-fugitive'                   " Git from vim
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'                      " File history
Plug 'dbeniamine/cheat.sh-vim'              " The best pluggin
Plug 'christoomey/vim-tmux-navigator'       " Vim/tmux navigation fusion

" Autocomple
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" File search within git repos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
" End pluggin manager

" Set colorscheme style
" " For gruvbox
" let g:gruvbox_contrast_dark = 'hard'
" colorscheme gruvbox
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

" " For felipec
" colorscheme felipec
" "

" colorscheme lighthaus
colorscheme badwolf

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

let g:tmux_navigator_disable_when_zoomed = 1            " Prevent vim-tmux-navigator to get out of zoomed pane
" Tmux navigator mappings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <A-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
nnoremap <silent> <A-l> :TmuxNavigateRight<cr>
nnoremap <silent> <A-p> :TmuxNavigatePrevious<cr>
"

" Keybindings
vnoremap <leader>p "_dP
nnoremap <C-p> :GFiles<CR>
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
"nnoremap <leader>h :wincmd h<CR>
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>f :Files<CR>
nmap <leader>gd <Plug>(cod-definition)
nmap <leader>gr <Plug>(cod-references)
nnoremap <C-q> :bd<CR>

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
