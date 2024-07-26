return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  lazy = true,
  cmd = "ConformInfo",
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
  init = function()
    -- Install the conform formatter on VeryLazy
    LazyVim.on_very_lazy(function()
      LazyVim.format.register({
        name = "conform.nvim",
        priority = 100,
        primary = true,
        format = function(buf)
          local opts = LazyVim.opts("conform.nvim")
          require("conform").format(LazyVim.merge({}, opts.format, { bufnr = buf }))
        end,
        sources = function(buf)
          local ret = require("conform").list_formatters(buf)
          ---@param v conform.FormatterInfo
          return vim.tbl_map(function(v)
            return v.name
          end, ret)
        end,
      })
    end)
  end,

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

      black = {
        command = "C:\\Users\\nvim\\nvim-conform\\black.cmd",
      },

      shfmt = {
        command = "C:\\Users\\nvim\\nvim-conform\\shfmt.cmd",
      },

      markdownlint = {
        command = "C:\\Users\\nvim\\nvim-conform\\markdownlint.cmd",
      },
    },
  },
}
