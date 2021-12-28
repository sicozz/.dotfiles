-- each of these are documented in `:help nvim-tree.OPTION_NAME`
vim.g.nvim_tree_indent_markers = 1
require'nvim-tree'.setup {
  open_on_setup       = true,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = false,
    custom = {}
  },
  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = true,
    relativenumber = true,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

-- Global remapping
local map = vim.api.nvim_set_keymap
map('n', '<C-n>', ':NvimTreeToggle<Return>', {noremap = true})
