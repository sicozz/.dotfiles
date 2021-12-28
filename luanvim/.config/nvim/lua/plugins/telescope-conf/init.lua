local actions = require('telescope.actions')
require('telescope').setup{
    defaults = {
        mappings = {
            n = {
                ["q"] = actions.close
            },
        },
    }
}

-- Global remapping
local map = vim.api.nvim_set_keymap
map('n', '<leader>f', ':Telescope find_files<Return>', {noremap = true, silent = true})
map('n', '<leader>r', ':Telescope live_grep<Return>', {noremap = true, silent = true})
map('n', '\\', ':Telescope buffers<Return>', {noremap = true, silent = true})
map('n', '<leader>;', ':Telescope help_tags<Return>', {noremap = true, silent = true})
