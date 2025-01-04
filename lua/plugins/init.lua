return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
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
        "java"
      },
    },
  },
  {
    'ThePrimeagen/vim-be-good',
    cmd = "VimBeGood",
    config = function()
      require('vim-be-good').setup({})
    end
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    config = function()
      -- Install the plugin using lazy.nvim, packer.nvim, or vim-plug
      require("todo-comments").setup {
        -- Highlight specific keywords
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
        -- Highlight text pattern
        highlight = {
          before = "bg",                   -- "fg" or "bg" or empty
          keyword = "wide",                -- "fg", "bg", "wide", or empty
          after = "fg",                    -- "fg" or "bg" or empty
          pattern = [[.*<(KEYWORDS)\s*:]], -- pattern used for highlighting
          comments_only = true,            -- uses treesitter to match keywords in comments only
          max_line_len = 400,              -- ignore lines longer than this
        },
        -- List TODOs in the quickfix window
        search = {
          command = "rg",
          args = {
            "--color=never",
            "--no-heading",
            "--with-filename",
            "--line-number",
            "--column",
          },
          pattern = [[\b(KEYWORDS):]], -- ripgrep regex
        },
      }

      -- Optional: Map keys for convenience
      vim.keymap.set("n", "<leader>td", ":TodoQuickFix<CR>", { desc = "Show TODOs in QuickFix" })
    end
  },
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {}
  },
  {
    'andweeb/presence.nvim',
    lazy = false,
    opts = {
      auto_update         = true,
      neovim_image_text   = "The One True Text Editor",
      main_image          = "6999296",
      client_id           = "1325135620707713035",
      log_level           = 'info',
      debounce_timeout    = 10,
      enable_line_number  = false,
      blacklist           = {},
      buttons             = true,
      file_assets         = {},
      show_time           = true,
      editing_text        = "Flexing on Others in %s",
      file_explorer_text  = "Flexing While Exploring",
      git_commit_text     = "Flexing while committing changes",
      plugin_manager_text = "Flexing while Managing plugins",
      reading_text        = "Reading and Flexing in %s",
      workspace_text      = "Flexing on YEAHHHH",
      line_number_text    = "Line %s out of %s",
    }
  },
}
