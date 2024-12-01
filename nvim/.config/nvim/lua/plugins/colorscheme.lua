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
		"craftzdog/solarized-osaka.nvim",
		lazy = true,
		priority = 1000,
		opts = function()
			return {
				transparent = true,
			}
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
