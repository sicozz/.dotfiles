" Completion " {{{
" ---------------------------------------------------------------------
"   inoremap <expr> <A-,> pumvisible() ? "<C-y>" : "<A-,>" 
"   inoremap <expr> <A-.> pumvisible() ? "<C-n>" : "<A-.>" 
"   inoremap <expr> <A-p> pumvisible() ? "<C-p>" : "<A-p>" 
" }}}

" Tmux navigator " {{{
nnoremap <silent> <A-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
nnoremap <silent> <A-l> :TmuxNavigateRight<cr>
nnoremap <silent> <A-p> :TmuxNavigatePrevious<cr>
nnoremap <silent> <A-v> :wincmd v<cr>
nnoremap <silent> <A-s> :wincmd s<cr>
" }}}

" Buffers " {{{
" ---------------------------------------------------------------------
" Last buffer toggle
" nnoremap <Tab> :silent b#<CR>
" Buffer quit
nnoremap <C-q> :bd<CR>
" }}}

" Splits "{{{
nmap ss :split<Return>
nmap sv :vsplit<Return>
nmap sq :q<Return>
nmap sf :VimFilerBufferDir<Return>
nmap sh <C-w>h
nmap sj <C-w>j
nmap sk <C-w>k
nmap sl <C-w>l
"}}}

" Last buffer
nnoremap <leader><leader> <C-^>

" Jumplist mutations
nnoremap <expr> k (v:count > 5 ? "m'" . v:count: "") . 'k'
nnoremap <expr> j (v:count > 5 ? "m'" . v:count: "") . 'j'

" Paste without rewrite register
vnoremap <leader>p "_dP

" Tab moves
nmap <leader><Tab> :tabnext<Return>
nmap <leader><S-Tab> :tabprev<Return>

" Terminal
nnoremap <leader>t :terminal<CR>

" Visual traslation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Undo tree
nnoremap <leader>u :UndotreeShow<CR>

" Vim presentations " {{{
" ---------------------------------------------------------------------
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
nnoremap <Left> :silent bp<CR> :redraw!<CR>
nnoremap <Right> :silent bn<CR> :redraw!<CR>
" }}}

" Git (fugitive) shortcuts " {{{
" ---------------------------------------------------------------------
nmap <leader>gs :G<CR>
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nnoremap <leader>gc :GBranches<CR>
" }}}
