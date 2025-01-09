return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "typescript",
        "javascript",
        "go",
        "java",
      },
    },
  },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
    config = function()
      require("vim-be-good").setup {}
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      require("todo-comments").setup {
        keywords = {
          FIX = {
            icon = " ", -- icon used for the sign, and in search results
            color = "error", -- can be a hex color, or a named color (see below)
            alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- other keywords
          },
          TODO = { icon = " ", color = "info" },
          HACK = { icon = " ", color = "warning" },
          WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
          NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
        },
        highlight = {
          before = "bg", -- "fg" or "bg" or empty
          keyword = "wide", -- "fg", "bg", "wide", or empty
          after = "fg", -- "fg" or "bg" or empty
          pattern = [[.*<(KEYWORDS)\s*:]], -- pattern used for highlighting
          comments_only = true, -- uses treesitter to match keywords in comments only
          max_line_len = 400, -- ignore lines longer than this
        },
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          pattern = [[\b(KEYWORDS):]],
        },
      }

      vim.keymap.set("n", "<leader>td", ":TodoQuickFix<CR>", { desc = "Show TODOs in QuickFix" })
    end,
  },
  {
    "folke/trouble.nvim",
    opts = {},
    cmd = "Trouble",
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "andweeb/presence.nvim",
    lazy = false,
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
    "windwp/nvim-autopairs",
    enabled = false,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleCompletions"](1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },
}
