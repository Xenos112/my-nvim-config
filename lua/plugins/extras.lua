return {
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function()
      require("gitsigns").setup({})
    end,
  },
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      auto_update = true,
      neovim_image_text = "The One True Text Editor",
      main_image = "6999296",
      client_id = "1325135620707713035",
      log_level = nil,
      debounce_timeout = 10,
      enable_line_number = true,
      blacklist = {},
      buttons = true,
      file_assets = {},
      show_time = true,
      editing_text = "Flexing on Others in %s",
      file_explorer_text = "Flexing While Exploring",
      git_commit_text = "Flexing while committing changes",
      plugin_manager_text = "Flexing while Managing plugins",
      reading_text = "Reading and Flexing in %s",
      workspace_text = "Flexing on YEAHHHH",
      line_number_text = "Line %s out of %s",
    },
  },
  {
    "stevearc/oil.nvim",
    event = "VeryLazy",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    config = function()
      require("oil").setup({})
      vim.keymap.set("n", "<leader>e", ":Oil<CR>", { desc = "Open Oil", silent = true })
    end,
  },
}
