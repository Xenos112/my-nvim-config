return {
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
}
