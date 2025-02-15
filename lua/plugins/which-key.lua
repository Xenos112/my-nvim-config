return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  keys = "<leader>",
  config = function()
    require("which-key").setup({})
  end,
}
