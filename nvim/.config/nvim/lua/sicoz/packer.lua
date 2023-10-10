vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use 'cocopon/iceberg.vim'

    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use 'theprimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use {
        'folke/trouble.nvim',
        requires = { 'nvim-tree/nvim-web-devicons' }
    }
    use {
        'folke/todo-comments.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }
    use 'rcarriga/nvim-notify'

    use {
        'rcarriga/nvim-dap-ui',
        requires = { 'mfussenegger/nvim-dap' }
    }
    use 'theHamsta/nvim-dap-virtual-text'
    use 'leoluz/nvim-dap-go'

    -- Only Go
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support

    -- Extras
    use({
        "iamcco/markdown-preview.nvim",
        run = "cd app && npm install",
        setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
        ft = { "markdown" },
    })
end)
