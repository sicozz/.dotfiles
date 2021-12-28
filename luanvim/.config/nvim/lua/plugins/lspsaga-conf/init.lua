local lspsaga = require 'lspsaga'
lspsaga.setup {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

-- Global mappings
local map = vim.api.nvim_set_keymap
map('n', '<C-e>', ':Lspsaga diagnostic_jump_next<Return>', {noremap = true, silent = true})
map('n', 'K', ':lua require("lspsaga.hover").render_hover_doc()<Return>', {noremap = true, silent = true})
map('n', 'gh', ':Lspsaga lsp_finder<Return>', {noremap = true, silent = true})
map('n', 'gp', ':Lspsaga preview_definition<Return>', {noremap = true, silent = true})
