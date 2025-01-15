return {
  "ThePrimeagen/harpoon",
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
}
