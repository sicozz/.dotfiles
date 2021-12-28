vim.wo.wrap = false
vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = "/home/sicoz/.config/nvim/undodir"
vim.o.undofile = true
vim.o.hidden = true
vim.o.hlsearch = false
vim.o.incsearch = true

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.completeopt = "menuone,noinsert,noselect"
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.path = vim.o.path .. "**"

vim.cmd('filetype plugin indent on')

vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.o.scrolloff = 5
vim.o.sidescrolloff = 999

vim.o.splitbelow = true
vim.o.splitright = true
vim.o.foldmethod = "marker"

vim.wo.colorcolumn = "80"
vim.wo.signcolumn = "yes"

vim.wo.cursorline = true
vim.o.guicursor = ''

-- Disable various builtin plugins in Vim that bog down speed
vim.g.loaded_matchparen = 1
vim.g.loaded_matchit = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_gzip = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_shada_plugin = 1
vim.g.loaded_spellfile_plugin = 1
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_remote_plugins = 1
