return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
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
}
