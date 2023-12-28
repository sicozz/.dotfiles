return {
	"nvim-lualine/lualine.nvim",
	config = function()
		local lualine = require("lualine")
		local iceberg_dark = require("lualine.themes.iceberg_dark")

		lualine.setup({
			options = {
				theme = iceberg_dark,
				icons_enabled = true,
			},
			sections = {

				lualine_c = {
					{
						"filename",
						path = 1,
					},
				},
			},
		})
	end,
}
