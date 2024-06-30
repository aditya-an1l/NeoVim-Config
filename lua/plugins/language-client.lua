return {
  "autozimu/LanguageClient-neovim",
  branch = "next",
  build = "powershell -executionpolicy bypass -File install.ps1",
  config = function()
    -- Set hidden to allow operations modifying multiple buffers
    vim.opt.hidden = true

    -- Configure the server commands
    vim.g.LanguageClient_serverCommands = {
      rust = { "~/.cargo/bin/rustup", "run", "stable", "rls" },
      javascript = { "/usr/local/bin/javascript-typescript-stdio" },
      ["javascript.jsx"] = { "tcp://127.0.0.1:2089" },
      python = { "/usr/local/bin/pyls" },
      ruby = { "~/.rbenv/shims/solargraph", "stdio" },
    }

    -- Map keybindings
    vim.api.nvim_set_keymap("n", "K", "<cmd>call LanguageClient#textDocument_hover()<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "gd", "<cmd>call LanguageClient#textDocument_definition()<CR>", { silent = true })
    vim.api.nvim_set_keymap("n", "<F2>", "<cmd>call LanguageClient#textDocument_rename()<CR>", { silent = true })
  end,
}
