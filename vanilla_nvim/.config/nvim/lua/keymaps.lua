local opts = { noremap = true, silent = true }

-- Edit plugins
vim.api.nvim_set_keymap("n", "<leader>vpp", "<cmd>e ~/.dotfiles/vanilla_nvim/.config/nvim/lua/plugins.lua<CR>", opts)

-- Do things without affecting the registers
vim.api.nvim_set_keymap("n", "x", '"_x', opts)
vim.api.nvim_set_keymap("n", "<Leader>p", '"0p', opts)
vim.api.nvim_set_keymap("n", "<Leader>P", '"0P', opts)
vim.api.nvim_set_keymap("v", "<Leader>p", '"0p', opts)
vim.api.nvim_set_keymap("n", "<Leader>c", '"_c', opts)
vim.api.nvim_set_keymap("n", "<Leader>C", '"_C', opts)
vim.api.nvim_set_keymap("v", "<Leader>c", '"_c', opts)
vim.api.nvim_set_keymap("v", "<Leader>C", '"_C', opts)
vim.api.nvim_set_keymap("n", "<Leader>d", '"_d', opts)
vim.api.nvim_set_keymap("n", "<Leader>D", '"_D', opts)
vim.api.nvim_set_keymap("v", "<Leader>d", '"_d', opts)
vim.api.nvim_set_keymap("v", "<Leader>D", '"_D', opts)

-- New tab
vim.api.nvim_set_keymap("n", "te", ":tabedit", opts)
vim.api.nvim_set_keymap("n", "<tab>", ":tabnext<Return>", opts)
vim.api.nvim_set_keymap("n", "<s-tab>", ":tabprev<Return>", opts)

-- Resize window
vim.api.nvim_set_keymap("n", "<C-w><left>", "<C-w><", opts)
vim.api.nvim_set_keymap("n", "<C-w><right>", "<C-w>>", opts)
vim.api.nvim_set_keymap("n", "<C-w><up>", "<C-w>+", opts)
vim.api.nvim_set_keymap("n", "<C-w><down>", "<C-w>-", opts)

-- Close file buffer
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>bdelete<CR>", opts)

-- Press jk fast to escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", opts)

-- Better join maintains cursor in position
vim.api.nvim_set_keymap("n", "J", "mzJ`z", opts)

-- Better movement maintains cursor in position
vim.api.nvim_set_keymap("n", "<C-d>", "<C-d>zz", opts)
vim.api.nvim_set_keymap("n", "<C-u>", "<C-u>zz", opts)
vim.api.nvim_set_keymap("n", "n", "nzzzv", opts)
vim.api.nvim_set_keymap("n", "N", "Nzzzv", opts)

-- Disable key
vim.api.nvim_set_keymap("n", "Q", "<nop>", opts)
vim.api.nvim_set_keymap("n", "s", "<nop>", opts)