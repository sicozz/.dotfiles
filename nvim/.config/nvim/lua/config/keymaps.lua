local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Edit plugins
keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/lazyvim/.config/nvim/lua/config/lazy.lua<CR>")

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
-- keymap.set("n", "ss", ":split<Return>", opts)
-- keymap.set("n", "sv", ":vsplit<Return>", opts)
-- -- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Close file buffer
vim.keymap.set("n", "<leader>q", "<cmd>bdelete<CR>")

-- Press jk fast to escape
vim.keymap.set("i", "jk", "<ESC>")

-- Better join maintains cursor in position
keymap.set("n", "J", "mzJ`z")

-- Better movement maintains cursor in position
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Disable key
keymap.set("n", "Q", "<nop>")
keymap.set("n", "s", "<nop>")

-- Source
-- Better to just use :so<CR>
-- keymap.set("n", "<leader><leader>", function()
-- 	vim.cmd("so")
-- end)
