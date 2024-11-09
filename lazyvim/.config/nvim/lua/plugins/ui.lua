return {
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		opts = {
			plugins = {
				gitsigns = true,
				tmux = true,
				kitty = { enabled = false, font = "+2" },
			},
		},
		keys = { { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" } },
	},

	{
		"nvimdev/dashboard-nvim",
        enabled = false,
		event = "VimEnter",
		opts = function(_, opts)
			local logo = [[
        ██████╗ ███████╗██╗   ██╗ █████╗ ███████╗██╗     ██╗███████╗███████╗
        ██╔══██╗██╔════╝██║   ██║██╔══██╗██╔════╝██║     ██║██╔════╝██╔════╝
        ██║  ██║█████╗  ██║   ██║███████║███████╗██║     ██║█████╗  █████╗  
        ██║  ██║██╔══╝  ╚██╗ ██╔╝██╔══██║╚════██║██║     ██║██╔══╝  ██╔══╝  
        ██████╔╝███████╗ ╚████╔╝ ██║  ██║███████║███████╗██║██║     ███████╗
        ╚═════╝ ╚══════╝  ╚═══╝  ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝     ╚══════╝
      ]]

			logo = string.rep("\n", 8) .. logo .. "\n\n"
			opts.config.header = vim.split(logo, "\n")
		end,
	},

	{
		"folke/noice.nvim",
		enabled = false,
	},

	{
		"akinsho/bufferline.nvim",
		enabled = false,
	},

	-- statusline
	{
		enabled = false,
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
		end,
	},
    {
        "MunifTanjim/nui.nvim",
        enabled = false,
    }
}
