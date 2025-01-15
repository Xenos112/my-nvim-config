return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require('toggleterm').setup {
      size = 20,
      open_mapping = [[<c-\>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = 'float',
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = 'curved',
        winblend = 0,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    }
    vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = "Terminal: Toggle terminal" })
    vim.keymap.set('t', 'jk', [[<C-\><C-n>]], { desc = "Terminal: Toggle terminal" })
    vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { desc = "Terminal: Move to left" })
    vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { desc = "Terminal: Move to bottom" })
    vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { desc = "Terminal: Move to top" })
    vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { desc = "Terminal: Move to right" })
    vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], { desc = "Terminal: Move to other window" })
  end
}
