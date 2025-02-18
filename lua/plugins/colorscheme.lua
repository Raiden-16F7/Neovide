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
-- return {
-- 	"sam4llis/nvim-tundra",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {
-- 		transparent_background = true,
-- 	},
-- }

return {
	{
		"rose-pine/neovim",
		name = "rose-pine",
		-- priority = 1000,
		config = function()
			require("rose-pine").setup({
				variant = "main", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				-- disable_background = true,
				-- 	disable_nc_background = false,
				-- 	disable_float_background = false,
				-- extend_background_behind_borders = false,
				styles = {
					bold = true,
					italic = false,
					transparency = true,
				},
				highlight_groups = {
					ColorColumn = { bg = "#1C1C21" },
					Normal = { bg = "none" }, -- Main background remains transparent
					Pmenu = { bg = "", fg = "#e0def4" }, -- Completion menu background
					PmenuSel = { bg = "#4a465d", fg = "#f8f5f2" }, -- Highlighted completion item
					PmenuSbar = { bg = "#191724" }, -- Scrollbar background
					PmenuThumb = { bg = "#9ccfd8" }, -- Scrollbar thumb
				},
				enable = {
					terminal = false,
					legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
					migrations = true, -- Handle deprecated options automatically
				},
			})

			-- HACK: set this on the color you want to be persistent
			-- when quit and reopening nvim
			-- vim.cmd("colorscheme rose-pine")
		end,
	},
}

-- return {
-- 	{
-- 		"craftzdog/solarized-osaka.nvim",
-- 		lazy = false,
-- 		config = function()
-- 			require("solarized-osaka").setup({
-- 				transparent = true,
-- 				terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
-- 				styles = {
-- 					-- Style to be applied to different syntax groups
-- 					-- Value is any valid attr-list value for `:help nvim_set_hl`
-- 					comments = { italic = true },
-- 					keywords = { italic = false },
-- 					functions = {},
-- 					variables = {},
-- 					-- Background styles. Can be "dark", "transparent" or "normal"
-- 					sidebars = "dark", -- style for sidebars, see below
-- 					floats = "dark", -- style for floating windows
-- 				},
-- 				sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
-- 				day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
-- 				hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
-- 				dim_inactive = false, -- dims inactive windows
-- 				lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
-- 				on_highlights = function(hl, c)
-- 					local prompt = "#2d3149"
-- 					hl.TelescopeNormal = {
-- 						bg = c.bg_dark,
-- 						fg = c.fg_dark,
-- 					}
-- 					hl.TelescopeBorder = {
-- 						bg = c.bg_dark,
-- 						fg = c.bg_dark,
-- 					}
-- 					hl.TelescopePromptNormal = {
-- 						bg = c.bg_dark,
-- 					}
-- 					hl.TelescopePromptBorder = {
-- 						bg = c.bg_dark,
-- 						fg = c.bg_dark,
-- 					}
-- 					hl.TelescopePromptTitle = {
-- 						bg = prompt,
-- 						fg = "#2C94DD",
-- 					}
-- 					hl.TelescopePreviewTitle = {
-- 						bg = c.bg_dark,
-- 						fg = c.bg_dark,
-- 					}
-- 					hl.TelescopeResultsTitle = {
-- 						bg = c.bg_dark,
-- 						fg = c.bg_dark,
-- 					}
-- 				end,
-- 			})
-- 		end,
-- 	},
-- }
--
-- return {
-- 	"catppuccin/nvim",
-- 	lazy = true,
-- 	name = "catppuccin",
-- 	opts = {
-- 		flavour = "mocha",
-- 		transparent_background = true,
-- 		color_overrides = {
-- 			all = {
-- 				green = "#a4fcc9",
-- 				base = "#030b16",
-- 				mantle = "#030b16",
-- 				crust = "#030b16",
-- 			},
-- 		},
-- 		integrations = {
-- 			aerial = true,
-- 			alpha = true,
-- 			cmp = true,
-- 			dashboard = true,
-- 			flash = true,
-- 			gitsigns = true,
-- 			headlines = true,
-- 			illuminate = true,
-- 			indent_blankline = { enabled = true },
-- 			leap = true,
-- 			lsp_trouble = true,
-- 			mason = true,
-- 			markdown = true,
-- 			mini = true,
-- 			native_lsp = {
-- 				enabled = true,
-- 				underlines = {
-- 					errors = { "undercurl" },
-- 					hints = { "undercurl" },
-- 					warnings = { "undercurl" },
-- 					information = { "undercurl" },
-- 				},
-- 			},
-- 			navic = { enabled = true, custom_bg = "lualine" },
-- 			neotest = true,
-- 			neotree = true,
-- 			noice = true,
-- 			notify = true,
-- 			semantic_tokens = true,
-- 			telescope = true,
-- 			treesitter = true,
-- 			treesitter_context = true,
-- 			which_key = true,
-- 		},
-- 	},
-- }
