return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  opts = function()
    local cmp = require("cmp")
    cmp.setup({
      enabled = false,
    })
  end,
}
