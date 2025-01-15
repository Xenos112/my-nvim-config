return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufRead",
	run = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			},
			ensure_installed = {
				"c",
				"javascript",
				"jsdoc",
				"typescript",
				"tsx",
				"go",
				"gosum",
				"css",
				"html",
				"lua",
			},
		})
	end,
}
