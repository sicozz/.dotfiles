if !exists('g:lspconfig')
    finish
endif
let g:LanguageClient_autoStart = 1

lua << EOF
--vim.lsp.set_log_level("debug")
EOF

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')

-- Use an on_attach function to only map the following keys 
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    --Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    local opts = { noremap=true, silent=true }

    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    buf_set_keymap('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    buf_set_keymap('n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)

    -- Formating
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
        vim.api.nvim_command [[augroup END]]
    end

    -- Set up completion using nvim_cmp with LSP source
    local capabilities = require('cmp_nvim_lsp').update_capabilities(
      vim.lsp.protocol.make_client_capabilities()
    )
end

nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { "javascript", "typescript", "typescriptreact", "typescript.tsx" }
}

nvim_lsp.rls.setup {
    on_attach = on_attach,
    filetypes = { "rustup", "run", "rls", "rust" }
}
EOF
