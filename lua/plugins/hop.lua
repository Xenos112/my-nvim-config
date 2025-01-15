return {
  "smoka7/hop.nvim",
  event = "BufRead",
  version = "*",
  opts = {
    keys = "etovxqpdygfblzhckisuran",
  },
  config = function()
    require("hop").setup({})

    vim.keymap.set("n", "<CR>", ":HopWord<CR>", { desc = "Hop to word under cursor", silent = true })
  end,
}
