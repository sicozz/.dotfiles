" MIT License. Copyright (c) 2013-2020 Bailey Ling & Contributors.
" vim: et ts=2 sts=2 sw=2

" let s:save_cpo = &cpo
" set cpo&vim
"
" scriptencoding utf-8
"
" if &cp || v:version < 702 || (exists('g:loaded_airline_themes') && g:loaded_airline_themes)
"   finish
" endif
" let g:loaded_airline_themes = 1
"
" let &cpo = s:save_cpo
" unlet s:save_cpo

" enable tabline
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

"let g:airline#extensions#tabline#left_sep = ''
"let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline#extensions#tabline#right_sep = ''
"let g:airline#extensions#tabline#right_alt_sep = ''

let g:airline#extensions#tabline#formatter = 'unique_tail'

" enable powerline fonts
"let g:airline_powerline_fonts = 1
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''

let g:airline_skip_empty_sections = 1

" Switch to your current theme
"let g:airline_theme = 'base16_chalk'
let g:airline_theme = 'badwolf'

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode
