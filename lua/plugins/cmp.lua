return {
  "hrsh7th/nvim-cmp",
  lazy = false,
  opts = function()
    local cmp = require("cmp")
    cmp.setup({
      enabled = false,
    })
    vim.api.nvim_create_user_command(
      "AutocorrectEnable",
      '<Cmd>lua require("cmp").setup.buffer {enabled = true}<CR>',
      {}
    )
    vim.api.nvim_create_user_command(
      "AutocorrectDisable",
      '<Cmd>lua require("cmp").setup.buffer {enabled = false}<CR>',
      {}
    )
  end,
}
