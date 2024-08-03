-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- require("lazy").setup({ { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" } })
require("nvim-treesitter.install").compilers = { "zig", "clang" }

-- setting powershell inside of nvim
vim.o.shell = "pwsh.exe"

-- intialise the neotree on the right

require("neo-tree.command").execute({ position = "right" })
