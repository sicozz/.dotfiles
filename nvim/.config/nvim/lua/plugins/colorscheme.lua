return {
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    opts = function()
      require("kanso").setup({
        bold = true, -- enable bold fonts
        italics = true, -- enable italics
        compile = false, -- enable compiling the colorscheme
        undercurl = false, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = {
          italic = false,
          bold = true,
        },
        statementStyle = {},
        typeStyle = { bold = true },
        transparent = false, -- do not set background color
        dimInactive = true, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        -- colors = { -- add/modify theme and palette colors
        --   palette = {},
        --   theme = { zen = {}, pearl = {}, ink = {}, all = {} },
        -- },
        -- overrides = function(colors) -- add/modify highlights
        --   return {}
        -- end,
        theme = "zen", -- Load "zen" theme
        background = { -- map the value of 'background' option to a theme
          dark = "zen", -- try "ink" !
          light = "pearl", -- try "mist" !
        },
      })
    end,
  },

  -- {
  --   "aktersnurra/no-clown-fiesta.nvim",
  --   priority = 1000,
  --   config = function()
  --     local plugin = require("no-clown-fiesta")
  --     plugin.setup({
  --       transparent = true,
  --       styles = {
  --         type = { bold = true },
  --         lsp = { underline = false },
  --         match_paren = { underline = true },
  --       },
  --     })
  --     return plugin.load()
  --   end,
  --   lazy = false,
  -- },

  {
    "sicozz/conqueror.nvim",
    priority = 1000,
    config = true,
    opts = function()
      -- Default options:
      require("conqueror").setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        dim_inactive = false,
        transparent_mode = true,
      })
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    priority = 1000,
    config = true,
    opts = function()
      require("kanagawa").setup({
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = {},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = true, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = "wave", -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = "wave", -- try "dragon" !
          light = "lotus",
        },
      })
    end,
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      require("solarized-osaka").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        transparent = true, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = false, bold = true },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "transparent", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors)
          colors.bg = "#000000"
        end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        -- on_highlights = function(highlights, colors) end,
      })
    end,
  },

  {
    "jackplus-xyz/binary.nvim",
    opts = {
      style = "light",
      colors = {
        fg = "#00cece",
        bg = "#000a0a",
      },
      -- Customize the reversed groups
      reversed_group = {
        Title = true, -- Add a new reversed group
        Search = false, -- Disable a default reversed group
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    enabled = false,
  },

  {
    "catppuccin/nvim",
    enabled = false,
  },
}
