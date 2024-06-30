return {
  "https://github.com/williamboman/mason-lspconfig.nvim",
  opts = function()
    local mason = require("mason-lspconfig")
    mason.setup({
      automatic_installation = { exclude = { "r-languageserver" } },
    })
  end,
}
