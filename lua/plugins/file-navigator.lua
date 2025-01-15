return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "kyazdani42/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
        custom = { ".git" },
      },
      view = {
        width = 30,
      },
    })
    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "File Navigator: Toggle file navigator" })
  end,
}
