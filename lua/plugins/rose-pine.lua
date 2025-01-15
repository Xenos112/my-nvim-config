return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine")
    vim.cmd('hi Comment gui=italic')
    vim.cmd('hi String gui=italic')
    vim.cmd [[hi Normal guibg=NONE ctermbg=NONE]]
    vim.cmd('hi Keyword gui=italic')
  end,
}
