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
	vim.g.neovide_transparency = 0.7
	vim.g.transparency = 0.7
	vim.g.neovide_window_blurred = true
	vim.g.neovide_cursor_vfx_mode = "pixiedust"
	vim.g.neovide_cursor_vfx_particle_density = 50.0
	vim.g.neovide_show_border = true
	vim.g.neovide_theme = "auto"
	vim.g.neovide_padding_top = 10
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
end
