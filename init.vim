syntax on
set noerrorbells                        " Disables the bell sound on error
set mouse=a				                " Enables mouse integration
set tabstop=4
set softtabstop=4                       " Sets tabs to 4 spaces
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
"set textwidth=80                        " Sets line wrap limit
" set signcolumn=yes                      " Left column for special messages
set path+=**                            " Fuzzy finding vim source

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = "[".GitBranch()."]"
  return strlen(l:branchname) > 2?'  '.l:branchname.' ':''
endfunction

let g:branch__ = StatuslineGit()
set statusline=
"set statusline+=%{branch__}
set statusline+=%{StatuslineGit()}
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=\ FT:\ %Y
set statusline+=\ BN:\ %n
set statusline+=\ LN:\ %l
" Start pluggin manager
call plug#begin('~/.config/nvim/plugged')
" Colorscheme
Plug 'ayu-theme/ayu-vim'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

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
Plug 'stsewd/fzf-checkout.vim'

call plug#end()
" End pluggin manager

" Colorscheme configs
" set termguicolors
" let ayucolor="dark"  " for dark version of theme
" colorscheme ayu

set termguicolors
colorscheme spaceduck

" Variables
let mapleader = " "
let g:netrw_banner = 0
" let g:netrw_winsize = 25

let g:tmux_navigator_disable_when_zoomed = 1            " Prevent vim-tmux-navigator to get out of zoomed pane
let g:tmux_navigator_no_mappings = 1

" Templates
autocmd BufNewFile  *.html	0r ~/.config/nvim/templates/skeleton.html
autocmd BufNewFile  *.tex	0r ~/.config/nvim/templates/skeleton.tex
autocmd BufNewFile  *.bib	0r ~/.config/nvim/templates/skeleton.bib

" Tmux navigator mappings
nnoremap <silent> <A-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
nnoremap <silent> <A-l> :TmuxNavigateRight<cr>
nnoremap <silent> <A-p> :TmuxNavigatePrevious<cr>

" Keybindings
vnoremap <leader>p "_dP

nnoremap <Tab> :silent b#<CR>
nnoremap <Left> :silent bp<CR> :redraw!<CR>
nnoremap <Right> :silent bn<CR> :redraw!<CR>
nnoremap <C-q> :bd<CR>

let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set norelativenumber
        set nonumber
        set noshowmode
        set noshowcmd
        set noruler
        set laststatus=0
    else
        let s:hidden_all = 0
        set relativenumber
        set number
        set showmode
        set showcmd
        set ruler
        set laststatus=2
    endif
endfunction
nnoremap <F5> :call ToggleHiddenAll()<CR>

nnoremap <leader>u :UndotreeShow<CR>
" Git shortcuts
nmap <leader>gs :G<CR>
nmap <leader>gj :diffget //3<CR>
nmap <leader>gf :diffget //2<CR>
nnoremap <leader>gc :GCheckout<CR>
"nnoremap <leader>h :wincmd h<CR>                       " windoww jumps without tmux_navigator
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
" Fzf shortcuts
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>f :Files<CR>

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
