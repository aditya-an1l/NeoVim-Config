-- I am more into minimalist less-fancy colorscheme (that's why I have disabled catppuccin :) )
-- Moonfly seems to work fine in most cases. However, if I am too tired, or it is late at night, torte works well as well.
return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "moonfly",
    },
  },
}
