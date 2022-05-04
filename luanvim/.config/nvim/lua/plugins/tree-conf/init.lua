-- each of these are documented in `:help nvim-tree.OPTION_NAME`
require'nvim-tree'.setup {
  open_on_setup       = false,
  ignore_ft_on_setup  = {},
  open_on_tab         = true,
  update_cwd          = false,
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
  renderer = {
    indent_markers = {
      enable = false,
      icons = {
        corner = "└ ",
        edge = "│ ",
        none = "  ",
      },
    },
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
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
map('n', '<A-n>', ':NvimTreeToggle<Return>', {noremap = true})
