return {
  -- disables hungry features for files larget than 2MB
  { "LunarVim/bigfile.nvim" },
  { -- format things as tables
    "godlygeek/tabular",
  },
  -- interactive global search and replace
  {
    "nvim-pack/nvim-spectre",
    cmd = { "Spectre" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  { "dapt4/vim-autoSurround" },
}
