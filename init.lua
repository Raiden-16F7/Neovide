if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

if vim.g.neovide then
	vim.o.guifont = "Menlo:h16"
	local alpha = function()
		return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
	end
	vim.g.neovide_transparency = 0.7
	vim.g.transparency = 0.8
	vim.g.neovide_window_blurred = true
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
	vim.g.neovide_cursor_vfx_particle_density = 12.0
	vim.g.neovide_show_border = true
	vim.g.neovide_theme = "auto"
	vim.g.neovide_padding_top = 10
end
