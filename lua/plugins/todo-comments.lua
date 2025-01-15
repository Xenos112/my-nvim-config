return {
  "folke/todo-comments.nvim",
  event = "BufReadPost",
  config = function()
    require("todo-comments").setup({})
    vim.keymap.set("n", "<leader>td", ":TodoQuickFix<CR>", { desc = "Todo QuickFix" })
  end,
}
