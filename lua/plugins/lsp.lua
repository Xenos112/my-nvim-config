return {
  {
    "neovim/nvim-lspconfig",
    event = "BufRead",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- Setup Mason
      require("mason").setup()

      -- Setup Mason LSPConfig
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls",
          "gopls",
          "tailwindcss",
          "html",
          "jsonls",
          "lua_ls",
          "eslint",
          "cssls",
          "clangd",
          "vuels",
        },
      })

      -- Setup LSP servers
      local lspconfig = require("lspconfig")

      local servers = {
        lua_ls = {},
        ts_ls = {},
        gopls = {},
        tailwindcss = {},
        html = {},
        jsonls = {},
        eslint = {},
        cssls = {},
        clangd = {},
        vuels = {
          filetypes = { "vue" },
        },
      }

      for server, config in pairs(servers) do
        lspconfig[server].setup(config)
      end

      -- Keymaps for LSP features
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
      vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, {})
      vim.keymap.set("n", "<leader>wa", vim.lsp.buf.add_workspace_folder, {})
      vim.keymap.set("n", "<leader>wr", vim.lsp.buf.remove_workspace_folder, {})
      vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
      vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, {})
      vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {})
      vim.keymap.set("n", "]d", vim.diagnostic.goto_next, {})
      vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
