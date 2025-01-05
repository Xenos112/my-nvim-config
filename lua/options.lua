require "nvchad.options"

vim.opt.relativenumber = true

vim.api.nvim_set_hl(0, "YankHighlight", { bg = "#eb6f92", fg = "#191724" })
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({
      higroup = "YankHighlight",
      timeout = 200,
    })
  end,
})

vim.opt.scrolloff = 8
