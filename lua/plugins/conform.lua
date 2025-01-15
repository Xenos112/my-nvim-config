return {
  "stevearc/conform.nvim",
  event = "BufReadPost",
  config = function()
    require("conform").setup {
      format_on_save = {
        timeout_ms = 3000,
        lsp_fallback = true,
      },
      formatters_by_ft = {
        markdown = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        javascript = { "prettier", "eslint" },
        javascriptreact = { "prettier", "eslint" },
        typescriptreact = { "prettier", "eslint" },
        json = { "prettier" },
        yaml = { "prettier" },
        lua = { "stylua" },
      },
      formatters_by_ft_with_sync = {
        markdown = { "prettier" },
        html = { "prettier" },
        css = { "prettier" },
        scss = { "prettier" },
        javascript = { "prettier", "eslint" },
        javascriptreact = { "prettier", "eslint" },
        typescript = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        lua = { "stylua" },
      },
    }
  end,
}
