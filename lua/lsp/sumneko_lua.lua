local M = {}

M.setup = function(lspconfig, capabilities, keymaps)
  require("neodev").setup()
  lspconfig["sumneko_lua"].setup({
    on_attach = keymaps,
    capabilities = capabilities,
    settings = {
      Lua = {
        workspace = {
          checkThirdParty = false,
        },
      },
    },
  })
end

return M
