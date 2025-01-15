return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        numbers = 'none',
        middle_mouse_command = nil,
        buffer_close_icon = '',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = false,
        offsets = {
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            text_align = 'center',
            highlight = 'Directory',
            padding = 1,
          },
          {
            filetype = 'Outline',
            text = 'Symbols Outline',
            text_align = 'center',
            highlight = 'Directory',
            padding = 1,
          },
          {
            filetype = 'alpha',
            text = 'Alpha Dashboard',
            text_align = 'center',
            highlight = 'Directory',
            padding = 1,
          },
        },

        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = 'thin',
        enforce_regular_tabs = false,
        always_show_bufferline = false,
        sort_by = 'id',
        custom_filter = nil,
        groups = {
          -- list of highlight groups
          -- @param highlights table
          -- @param icon string
          -- @param name string
          -- @param id number
          -- @param order number
          -- @return table
          all = {
            highlights = {
              default = 'Normal',
              fill = 'StatusLine',
            },
            name = 'All',
            id = 1,
            order = 1,
          },
          search = {
            highlights = {
              default = 'Normal',
              -- fill = 'StatusLine',
            },
            name = 'Search',
            id = 2,
            order = 2,
          },
          replace = {
            highlights = {
              default = 'Normal',
              -- fill = 'StatusLine',
            },
            name = 'Replace',
            id = 3,
            order = 3,
          },
        },
      },
    }
  end
}
