local keymap = vim.keymap
 local opts = { noremap = true, silent = true }

--- Increment/decrement
keymap.set("n", "+",  "<C-a>")
keymap.set("n", "-",  "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Close file buffer
vim.keymap.set("n", "<leader>q", "<cmd>bdelete<CR>")

-- Better join maintains cursor in position
vim.keymap.set("n", "J", "mzJ`z")

-- Better movement maintains cursor in position
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Disable Q
vim.keymap.set("n", "Q", "<nop>")

-- Open tmux-sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Prompt regex search and replace with current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Edit plugins
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/init.lua<CR>");

-- Navigator (netwr)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
