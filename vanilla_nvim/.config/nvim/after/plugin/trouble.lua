require('trouble').setup()
vim.keymap.set("n", "<leader>tt", "<cmd>Trouble diagnostics toggle focus=false filter.buf=0<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tw", "<cmd>Trouble workspace_diagnostics toggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>td", "<cmd>Trouble document_diagnostics toggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tl", "<cmd>Trouble loclist toggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>tq", "<cmd>Trouble quickfix toggle<cr>",
    { silent = true, noremap = true }
)
vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references toggle<cr>",
    { silent = true, noremap = true }
)
