require('todo-comments').setup()

vim.keymap.set("n", "<leader>tT", "<cmd>TodoTrouble<cr>", { silent = true, noremap = true })
