-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		transparent = true,
-- 	},
-- }
-- }
-- return {
-- 	-- add gruvbox
-- 	{ "rose-pine/neovim" },
--
-- 	-- Configure LazyVim to load gruvbox
-- 	{
-- 		"LazyVim/LazyVim",
-- 		opts = {
-- 			colorscheme = "rose-pine",
-- 		},
-- 	},
-- }

return {
	"catppuccin/nvim",
	lazy = true,
	name = "catppuccin",
	opts = {
		flavour = "mocha",
		transparent_background = true,
		color_overrides = {
			all = {
				green = "#a4fcc9",
				base = "#030b16",
				mantle = "#030b16",
				crust = "#030b16",
			},
		},
		integrations = {
			aerial = true,
			alpha = true,
			cmp = true,
			dashboard = true,
			flash = true,
			gitsigns = true,
			headlines = true,
			illuminate = true,
			indent_blankline = { enabled = true },
			leap = true,
			lsp_trouble = true,
			mason = true,
			markdown = true,
			mini = true,
			native_lsp = {
				enabled = true,
				underlines = {
					errors = { "undercurl" },
					hints = { "undercurl" },
					warnings = { "undercurl" },
					information = { "undercurl" },
				},
			},
			navic = { enabled = true, custom_bg = "lualine" },
			neotest = true,
			neotree = true,
			noice = true,
			notify = true,
			semantic_tokens = true,
			telescope = true,
			treesitter = true,
			treesitter_context = true,
			which_key = true,
		},
	},
}
