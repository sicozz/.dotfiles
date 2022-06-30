vim.g.mapleader = ' '
local map = vim.api.nvim_set_keymap
map('n', 'ss', ':split<Return>', {noremap = false, silent = false})
map('n', 'sv', ':vsplit<Return>', {noremap = false, silent = false})
map('n', 'sq', ':q<Return>', {noremap = false, silent = false})
map('n', 'sh', '<C-w>h', {noremap = false, silent = false})
map('n', 'sj', '<C-w>j', {noremap = false, silent = false})
map('n', 'sk', '<C-w>k', {noremap = false, silent = false})
map('n', 'sl', '<C-w>l', {noremap = false, silent = false})
map('n', 'st', ':tabnext<Return>', {noremap = false, silent = false})
map('n', 'sT', ':tabprev<Return>', {noremap = false, silent = false})
map('n', 'te', ':tabedit ', {noremap = false, silent = false})

map('n', '<C-q>', ':bdelete<Return>', {noremap = false, silent = false})

map('n', '<C-a>', 'gg<S-v>G', {noremap = false, silent = false})
map('n', '<leader>t', ':terminal<Return>', {noremap = true})
map('n', '<leader>u', ':UndotreeShow<Return>', {noremap = true})
map('v', '<leader>p', '"_dP', {noremap = true})
map('n', 's', '<Nop>', {noremap = false, silent = false})

map('n', '<leader>gs', ':G<Return>', {noremap = false, silent = false})
map('n', '<leader>gh', ':diffget //3<Return>', {noremap = false, silent = false})
map('n', '<leader>gu', ':diffget //2<Return>', {noremap = false, silent = false})
map('n', '<leader>gc', ':GBranches<Return>', {noremap = true})

-- " Jumplist mutations
-- nnoremap <expr> k (v:count > 5 ? "m'" . v:count: "") . 'k'
-- nnoremap <expr> j (v:count > 5 ? "m'" . v:count: "") . 'j'
-- " Visual traslation
-- vnoremap J :m '>+1<Return>gv=gv
-- vnoremap K :m '<-2<Return>gv=gv
-- " Presentations of TJDeVries
