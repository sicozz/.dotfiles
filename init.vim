syntax on
set noerrorbells                        " Disables the bell sound on error
set mouse=a				                " Enables mouse integration
set tabstop=4
set softtabstop=4                       " Sets tabs to 4 spaces
set shiftwidth=4                        " Sets shifs indent to 4 spaces
set expandtab                           " Enables real copy and paste
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
set scrolloff=5                         " It scrollosff with n lines span
set colorcolumn=80                      " Sets limit line with color
set completeopt=menuone                 " Shows completion even if there is only one option
set shortmess+=c                        " Silences completion menu messages  
"set signcolumn=yes                      " Left column for special messages
set path+=**                            " Fuzzy finding vim source

function! s:statusline_expr()
  let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
  let ro  = "%{&readonly ? '[RO] ' : ''}"
  let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
  let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
  let sep = ' %= '
  let pos = ' %-12(%l : %c%V%) '
  let pct = ' %P'

  return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
endfunction

let &statusline = s:statusline_expr()

" Start pluggin manager
call plug#begin('~/.config/nvim/plugged')
" Colorscheme
Plug 'cocopon/iceberg.vim'
Plug 'w0ng/vim-hybrid'

" Utils
Plug 'sheerun/vim-polyglot'                 " Multiple language support
Plug 'tpope/vim-fugitive'                   " Git from vim
Plug 'vim-scripts/AutoComplPop'             " completion menu autopopup
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'                      " File history
Plug 'christoomey/vim-tmux-navigator'       " Vim/tmux navigation fusion

" File search within git repos
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

call plug#end()
" End pluggin manager

" Colorscheme configs
augroup iceberg-theme-overrides
  autocmd!
  " Use the blue for line numbers
  autocmd ColorScheme iceberg highlight LineNr ctermfg=239 ctermbg=235 guifg=#a5a9b7 guibg=#1e2132
  " Now tildes are white
  autocmd ColorScheme iceberg highlight EndOfBuffer ctermfg=0 guifg=#a5a9b7
augroup END

augroup hybrid-theme-overrides
  autocmd!
  " Use the blue for line numbers
  autocmd ColorScheme hybrid highlight LineNr ctermfg=239 guifg=#6d7581
  " Now tildes are white
  autocmd ColorScheme hybrid highlight EndOfBuffer ctermfg=0 guifg=#c1c4ca
augroup END
set termguicolors
colorscheme hybrid

" Variables
let mapleader = " "

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
nnoremap <silent> <A-v> :wincmd v<cr>
nnoremap <silent> <A-s> :wincmd s<cr>

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
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nnoremap <leader>gc :GBranches<CR>
"nnoremap <leader>h :wincmd h<CR>                       " windoww jumps without tmux_navigator
"nnoremap <leader>j :wincmd j<CR>
"nnoremap <leader>k :wincmd k<CR>
"nnoremap <leader>l :wincmd l<CR>
inoremap <expr> <A-,> pumvisible() ? "<C-y>" : "<A-,>" 
inoremap <expr> <A-.> pumvisible() ? "<C-n>" : "<A-.>" 
inoremap <expr> <A-p> pumvisible() ? "<C-p>" : "<A-p>" 

" Fzf colors match colorscheme
let g:fzf_colors =                                                                         
\ { 'fg':      ['fg', 'Normal'],                                                           
  \ 'bg':      ['bg', 'Normal'],                                                           
  \ 'hl':      ['fg', 'Comment'],                                                          
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],                             
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],                                       
  \ 'hl+':     ['fg', 'Statement'],                                                        
  \ 'info':    ['fg', 'PreProc'],                                                          
  \ 'border':  ['fg', 'Ignore'],                                                           
  \ 'prompt':  ['fg', 'Conditional'],                                                      
  \ 'pointer': ['fg', 'Exception'],                                                        
  \ 'marker':  ['fg', 'Keyword'],                                                          
  \ 'spinner': ['fg', 'Label'],                                                            
  \ 'header':  ['fg', 'Comment'] } 
" Fzf shortcuts
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>f :Files<CR>
