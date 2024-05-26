vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- Light theme
    use 'yasukotelin/shirotelin'

    -- Dark theme
    use 'craftzdog/solarized-osaka.nvim'
    use 'diegoulloao/neofusion.nvim'

    use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
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
    use {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()
        end,
    }
    use 'theprimeagen/harpoon'

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


    -- Only Go
    use 'ray-x/go.nvim'
    use 'ray-x/guihua.lua' -- recommended if need floating window support
end)
