if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

require("config.lazy")

if vim.g.neovide then
	vim.o.guifont = "JetBrainsMono Nerd Font:h18"
	vim.g.transparency = 0.6
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
	vim.g.neovide_cursor_vfx_particle_density = 50.0
	vim.g.neovide_padding_top = 10
	vim.g.neovide_transparency = 0.6
end
