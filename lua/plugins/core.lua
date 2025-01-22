return {
  {
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
  },
  {
    "folke/todo-comments.nvim",
    event = "BufReadPost",
    config = function()
      require("todo-comments").setup({})
      vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", { desc = "Todo QuickFix" })
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    event = "BufRead",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },
  {
    "ThePrimeagen/harpoon",
    cmd = { "Harpoon" },
    event = "BufRead",
    config = function()
      require("harpoon").setup({})
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")
      vim.keymap.set("n", "<leader>h", function()
        mark.add_file()
      end)
      vim.keymap.set("n", "<leader>H", function()
        ui.toggle_quick_menu()
      end)
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    config = function()
      local builtins = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtins.find_files, { desc = "Telescope Find Files" })
      vim.keymap.set("n", "<leader>fw", builtins.live_grep, { desc = "Telescole Live Grep" })
      vim.keymap.set("n", "<leader>fx", builtins.grep_string, { desc = "Telescope Grep String" })
      vim.keymap.set("n", "<leader>fb", builtins.buffers, { desc = "Telescole Buffers" })
      vim.keymap.set("n", "<leader>fh", builtins.help_tags, { desc = "Telescole Help Tags" })
      vim.keymap.set("n", "<leader>fo", builtins.oldfiles, { desc = "Telescope Old Files" })
      vim.keymap.set("n", "<leader>ft", builtins.tags, { desc = "Telescope Tags" })
      vim.keymap.set("n", "<leader>fr", builtins.registers, { desc = "Telescope Registers" })
      vim.keymap.set("n", "<leader>fm", builtins.marks, { desc = "Telecope Marks" })
      vim.keymap.set("n", "<leader>fc", builtins.commands, { desc = "Telecope Commands" })
    end,
  },
  {
    'echasnovski/mini.nvim',
    version = '*',
    config = function()
      require('mini.ai').setup({})
      require('mini.pairs').setup({})
      require('mini.animate').setup({})
    end
  },
}
