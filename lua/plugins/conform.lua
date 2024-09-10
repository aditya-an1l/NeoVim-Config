return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  cmd = "ConformInfo",
  enable = false,
  keys = {
    {
      "<leader>cF",
      function()
        require("conform").format({ formatters = { "injected" }, timeout_ms = 3000 })
      end,
      mode = { "n", "v" },
      desc = "Format Injected Langs",
    },
  },

  opts = {
    formatters = {
      -- In windows, I have space in my User Name space, and this thing cannot escape the space for some reasong.
      -- I put the cmd files into C:\\Users file, and manually setting the path
      -- changed the path of the conform cmd.
      stylua = {
        command = "C:\\Users\\nvim\\nvim-conform\\stylua.cmd",
      },

      prettier = {
        command = "C:\\Users\\nvim\\nvim-conform\\prettier.cmd",
      },

      prettierd = {
        command = "C:\\Users\\nvim\\nvim-conform\\prettierd.cmd",
      },
      shfmt = {
        command = "C:\\Users\\nvim\\nvim-conform\\shfmt.cmd",
      },

      biome = {
        command = "C:\\Users\\nvim\\nvim-conform\\biome.cmd",
      },

      ruff = {
        command = "C:\\Users\\nvim\\nvim-conform\\ruff.cmd",
      },

      clangformat = {
        command = "C:\\Users\\nvim\\nvim-conform\\clang-format.cmd",
      },

      markdownlint = {
        command = "C:\\Users\\nvim\\nvim-conform\\markdownlint.cmd",
      },
    },
  },
}
