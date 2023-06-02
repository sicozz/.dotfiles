function ColorMyPencils(color)
	color = color or "NeoSolarized"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()

vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg=234, bg="#002b36" })
-- vim.cmd.colorscheme("NeoSolarized")
