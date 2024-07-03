return {
  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        sumneko_lua = {},
        cssls = {},
        html = {},
        tsserver = {},
        bashls = {},
        jsonls = {},
        yamlls = {},
        gopls = {},
        marksman = {},
      },
    },
  },
}
