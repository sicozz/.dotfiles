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
				inverse = true, -- invert background for search, diffs, statuslines and errors
				palette_overrides = {
					dark0 = "#0a0a00",
					dark1 = "#141400",
					dark2 = "#272700",
					dark3 = "#3b3b00",
					dark4 = "#4e4e00",
					light0 = "#ffff14",
					light1 = "#ffff14",
					light2 = "#ebeb00",
					light3 = "#d8d800",
					light4 = "#c4c400",
					bright_red = "#8e8e8e",
					bright_green = "#897400",
					bright_yellow = "#fafafa",
					bright_blue = "#ffff14",
					bright_purple = "#008080",
					bright_aqua = "#ffff14",
					bright_orange = "#e4e4a5",
					neutral_red = "#d24141",
					neutral_green = "#009d4f",
					neutral_yellow = "#fafafa",
					neutral_blue = "#3b3b00",
					neutral_purple = "#ec30ac",
					neutral_aqua = "#ffff14",
					neutral_orange = "#897400",
					faded_red = "#00ff00", -- Dont know what this is for
					faded_green = "#004e4e",
					faded_yellow = "#008080",
					faded_blue = "#c4c400",
					faded_purple = "#ec30ac",
					faded_aqua = "#004e4e",
					faded_orange = "#008080",
					dark_red = "#8b0000",
					light_red = "#d24141",
					dark_green = "#004e4e",
					light_green = "#98971a",
					dark_aqua = "#004e4e",
					light_aqua = "#e8e5b5",
					gray = "#808044",
				},
				overrides = {
					StatusLine = { fg = "#fafafa", bg = "#272700", reverse = false },
					StatusLineNC = { fg = "#fafafa", bg = "#0a0a00", reverse = false },
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
