return {
	{
		"diegoulloao/neofusion.nvim",
		priority = 1000,
		config = true,
		opts = function()
			-- Default options:
			require("neofusion").setup({
				terminal_colors = true, -- add neovim terminal colors
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
				inverse = false, -- invert background for search, diffs, statuslines and errors
				palette_overrides = {
					dark0 = "#191919",
					dark1 = "#2d2d2d",
					dark2 = "#5e5e5e",
					dark3 = "#4f4f00",
					dark4 = "#8f8f8f",
					light0 = "#ffff14",
					light1 = "#fbfbfb",
					light2 = "#ebeb00",
					light3 = "#d8d800",
					light4 = "#c4c400",
					bright_red = "#8f8f8f",
					bright_green = "#ffff14",
					bright_yellow = "#a6a60c",
					bright_blue = "#ffff14",
					bright_purple = "#008080",
					bright_aqua = "#ffff14",
					bright_orange = "#c0c0c0",
					neutral_red = "#d24141",
					neutral_green = "#009d4f",
					neutral_yellow = "#fbfbfb",
					neutral_blue = "#3b3b00",
					neutral_purple = "#ec30ac",
					neutral_aqua = "#ffffff",
					neutral_orange = "#897400",
					faded_red = "#d24141",
					faded_green = "#004e4e",
					faded_yellow = "#008080",
					faded_blue = "#c4c400",
					faded_purple = "#ec30ac",
					faded_aqua = "#004e4e",
					faded_orange = "#008080",
					dark_red = "#8b0000",
					light_red = "#d24141",
					dark_green = "#004e4e",
					light_green = "#a6a60c",
					dark_aqua = "#004e4e",
					light_aqua = "#e8e5b5",
					gray = "#5e5e5e",
				},
				overrides = {
					Visual = { fg = "#000000", bg = "#ffff14" },
					StatusLine = { fg = "#000000", bg = "#fafafa", bold = true },
					StatusLineNC = { fg = "#dddddd", bg = "#2d2d2d", bold = false },
					Search = { fg = "#fafafa", bg = "#4f4f00" },
					IncSearch = { fg = "#000000", bg = "#ffff14" },
					WinSeparator = { fg = "#727272" },
				},
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
					keywords = { italic = true },
					functions = {},
					variables = {},
					-- Background styles. Can be "dark", "transparent" or "normal"
					sidebars = "dark", -- style for sidebars, see below
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
		"folke/tokyonight.nvim",
		enabled = false,
	},

	{
		"catppuccin/nvim",
		enabled = false,
	},
}
