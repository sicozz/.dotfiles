" Sets "{{{
" ---------------------------------------------------------------------
syntax on
set noerrorbells                        " Disables the bell sound on error
set mouse=a				                " Enables mouse integration
set tabstop=4 softtabstop=4             " Sets tabs to 4 spaces
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
set completeopt=menuone,noinsert,noselect " Shows completion even if there is only one option
set shortmess+=c                        " Silences completion menu messages  
set signcolumn=yes                      " Left column for special messages
set path+=**                            " Fuzzy finding vim source
set foldmethod=marker
"}}}

" Status line function{{{
" ---------------------------------------------------------------------
"   function! s:statusline_expr()
"     let mod = "%{&modified ? '[+] ' : !&modifiable ? '[x] ' : ''}"
"     let ro  = "%{&readonly ? '[RO] ' : ''}"
"     let ft  = "%{len(&filetype) ? '['.&filetype.'] ' : ''}"
"     let fug = "%{exists('g:loaded_fugitive') ? fugitive#statusline() : ''}"
"     let sep = ' %= '
"     let pos = ' %-12(%l : %c%V%) '
"     let pct = ' %P'

"     return '[%n] %f %<'.mod.ro.ft.fug.sep.pos.'%*'.pct
"   endfunction

"let &statusline = s:statusline_expr()"}}}

" Templates{{{
" ---------------------------------------------------------------------
autocmd BufNewFile  *.html	0r ~/.config/nvim/templates/skeleton.html
autocmd BufNewFile  *.tex	0r ~/.config/nvim/templates/skeleton.tex
autocmd BufNewFile  *.bib	0r ~/.config/nvim/templates/skeleton.bib"}}}

" Syntax theme " {{{
if exists("&termguicolors") && exists("&winblend")
    set termguicolors
    set winblend=0
    set wildoptions=pum
    set pumblend=5
    set background=dark
    " Use NeoSolarized
    let g:neosolarized_termtrans=1
    let g:neosolarized_contrast="normal"
    " let g:neosolarized_visibility="normal"
    runtime .colors/NeoSolarized.vim
    colorscheme NeoSolarized
endif
" }}}

" Plugins
runtime ./plug.vim

" Variables
let mapleader = " "

let g:tmux_navigator_disable_when_zoomed = 1            " Prevent vim-tmux-navigator to get out of zoomed pane
let g:tmux_navigator_no_mappings = 1

" Remaps
runtime ./maps.vim
