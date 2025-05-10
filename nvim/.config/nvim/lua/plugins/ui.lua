return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      plugins = {
        gitsigns = false,
        tmux = true,
      },
    },
    keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
  },

  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
88888888888888888888888888888888888888888888888888888888888888888888888
88.._|      | `-.  | `.  -_-_ _-_  _-  _- -_ -  .'|   |.'|     |  _..88
88   `-.._  |    |`!  |`.  -_ -__ -_ _- _-_-  .'  |.;'   |   _.!-'|  88
88      | `-!._  |  `;!  ;. _______________ ,'| .-' |   _!.i'     |  88
88..__  |     |`-!._ | `.| |_______________||."'|  _!.;'   |     _|..88
88   |``"..__ |    |`";.| i|_|MMMMMMMMMMM|_|'| _!-|   |   _|..-|'    88
88   |      |``--..|_ | `;!|l|MMoMMMMoMMM|1|.'j   |_..!-'|     |     88
88   |      |    |   |`-,!_|_|MMMMP'YMMMM|_||.!-;'  |    |     |     88
88___|______|____!.,.!,.!,!|d|MMMo * loMM|p|,!,.!.,.!..__|_____|_____88
88      |     |    |  |  | |_|MMMMb,dMMMM|_|| |   |   |    |      |  88
88      |     |    |..!-;'i|r|MPYMoMMMMoM|r| |`-..|   |    |      |  88
88      |    _!.-j'  | _!,"|_|M<>MMMMoMMM|_||!._|  `i-!.._ |      |  88
88     _!.-'|    | _."|  !;|1|MbdMMoMMMMM|l|`.| `-._|    |``-.._  |  88
88..-i'     |  _.''|  !-| !|_|MMMoMMMMoMM|_|.|`-. | ``._ |     |``"..88
88   |      |.|    |.|  !| |u|MoMMMMoMMMM|n||`. |`!   | `".    |     88
88   |  _.-'  |  .'  |.' |/|_|MMMMoMMMMoM|_|! |`!  `,.|    |-._|     88
88  _!"'|     !.'|  .'| .'|[@]MMMMMMMMMMM[@] \|  `. | `._  |   `-._  88
88-'    |   .'   |.|  |/| /                 \|`.  |`!    |.|      |`-88
88      |_.'|   .' | .' |/                   \  \ |  `.  | `._-Lee|  88
88     .'   | .'   |/|  /                     \ |`!   |`.|    `.  |  88
88  _.'     !'|   .' | /                       \|  `  |  `.    |`.|  88
88 vanishing point 888888888888888888888888888888888888888888888(FL)888]],
          ---@type snacks.dashboard.Item[]
          keys = {},
          -- { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          -- { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          -- { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          -- { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
          -- { icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          -- { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          -- { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          -- { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
          -- { icon = " ", key = "q", desc = "Quit", action = ":qa" },
          -- },
        },
      },
    },
  },

  {
    "folke/noice.nvim",
    enabled = false,
  },

  -- buffer line
  {
    "akinsho/bufferline.nvim",
    enabled = true,
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        -- separator_style = "slant",
        show_buffer_close_icons = false,
        show_close_icon = false,
      },
    },
  },

  -- statusline
  {
    enabled = true,
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local LazyVim = require("lazyvim.util")
      opts.sections.lualine_c[4] = {
        LazyVim.lualine.pretty_path({
          length = 0,
          relative = "cwd",
          modified_hl = "MatchParen",
          directory_hl = "",
          filename_hl = "Bold",
          modified_sign = "",
          readonly_icon = " 󰌾 ",
        }),
      }
      opts.options.component_separators = { left = "", right = "" }
      opts.options.section_separators = { left = "", right = "" }
    end,
  },
}
