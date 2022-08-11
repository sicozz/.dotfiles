local keymap = vim.keymap

vim.g.mapleader = ' '

-- Disable s default behaviour
keymap.set('n', 's', '<Nop>', {noremap = false, silent = false})

keymap.set('n', 'x', '"_x')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
--keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- New tab
keymap.set('n', 'te', ':tabedit')
-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')
-- Move window
--keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Close current buffer
keymap.set('n', '<C-q>', ':bdelete<Return>', {noremap = false, silent = false})

keymap.set('n', '<leader>u', ':UndotreeShow<Return>', {noremap = true})
keymap.set('v', '<leader>p', '"_dP', {noremap = true})

keymap.set('n', '<leader>gs', ':G<Return>', {noremap = false, silent = false})
keymap.set('n', '<leader>gh', ':diffget //3<Return>', {noremap = false, silent = false})
keymap.set('n', '<leader>gu', ':diffget //2<Return>', {noremap = false, silent = false})
keymap.set('n', '<leader>gc', ':GBranches<Return>', {noremap = true})
