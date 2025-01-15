return {
	"smoka7/hop.nvim",
	event = "BufRead",
	version = "*",
	opts = {
		keys = "etovxqpdygfblzhckisuran",
	},
	config = function()
		require("hop").setup({})

		vim.keymap.set("n", "<CR>", ":HopWord<CR>", {})
		-- HACK: maybe add some of the other mappings
	end,
}
