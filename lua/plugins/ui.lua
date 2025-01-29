return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
				},
			})
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		main = "ibk",
		opts = {},
		config = function()
			local highlight = {
				"RainbowRed",
				"RainbowYellow",
				"RainbowBlue",
				"RainbowOrange",
				"RainbowGreen",
				"RainbowViolet",
				"RainbowCyan",
			}
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
				vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#EBBCBA" }) -- Rose
				vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5B567" }) -- Gold
				vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#9CCFD8" }) -- Frost
				vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#F6C177" }) -- Peach
				vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A3BE8C" }) -- Pine
				vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#C4A7E7" }) -- Iris
				vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#9CCFD8" }) -- Frost (reused for consistency)
			end)

			vim.g.rainbow_delimiters = { highlight = highlight }
			require("ibl").setup({ scope = { highlight = highlight }, indent = { char = "┆" } })

			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
		end,
	},
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "BufRead",
		config = function()
			require("bufferline").setup({
				options = {
					numbers = "none",
					middle_mouse_command = nil,
					buffer_close_icon = "",
					modified_icon = "●",
					close_icon = "",
					left_trunc_marker = "",
					right_trunc_marker = "",
					max_name_length = 18,
					max_prefix_length = 15,
					tab_size = 18,
					diagnostics = "nvim_lsp",
					diagnostics_update_in_insert = false,
					offsets = {
						{
							filetype = "NvimTree",
							text = "File Explorer",
							text_align = "center",
							highlight = "Directory",
							padding = 1,
						},
						{
							filetype = "Outline",
							text = "Symbols Outline",
							text_align = "center",
							highlight = "Directory",
							padding = 1,
						},
						{
							filetype = "alpha",
							text = "Alpha Dashboard",
							text_align = "center",
							highlight = "Directory",
							padding = 1,
						},
					},

					show_buffer_icons = true,
					show_buffer_close_icons = true,
					show_close_icon = true,
					show_tab_indicators = true,
					persist_buffer_sort = true,
					separator_style = "thin",
					enforce_regular_tabs = false,
					always_show_bufferline = false,
					sort_by = "id",
					custom_filter = nil,
					groups = {
						all = {
							highlights = {
								default = "Normal",
								fill = "StatusLine",
							},
							name = "All",
							id = 1,
							order = 1,
						},
						search = {
							highlights = {
								default = "Normal",
								-- fill = 'StatusLine',
							},
							name = "Search",
							id = 2,
							order = 2,
						},
						replace = {
							highlights = {
								default = "Normal",
							},
							name = "Replace",
							id = 3,
							order = 3,
						},
					},
				},
			})
		end,
	},
	{
		"rose-pine/neovim",
		lazy = false,
		name = "rose-pine",
		priority = 1000,
		config = function()
			vim.cmd("colorscheme rose-pine")
			vim.cmd("hi Comment gui=italic")
			vim.cmd([[hi Normal guibg=NONE ctermbg=NONE]])
			vim.cmd("hi String gui=italic")
			vim.cmd("hi Keyword gui=italic")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		cmd = "Telescope",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
