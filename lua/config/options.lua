-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

------ Disabling diagnostics by default -------------
vim.diagnostic.enable(false)

------ Removing completed check boxes ---------

function remove_completed_tasks()
  local bufnr = vim.api.nvim_get_current_buf()
  local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

  -- Filter out lines that contain '- [x]'
  local new_lines = {}
  for _, line in ipairs(lines) do
    if not line:match("%- %[x%]") then
      table.insert(new_lines, line)
    end
  end

  -- Set the buffer's lines to the new filtered lines
  vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, new_lines)
end
vim.api.nvim_create_user_command("RemoveCompletedTasks", remove_completed_tasks, {})

------ enabling/disable autocorrect ------

vim.api.nvim_create_user_command("AutocorrectEnable", '<Cmd>lua require("cmp").setup.buffer {enabled = true}<CR>', {})

vim.api.nvim_create_user_command("AutocorrectDisable", '<Cmd>lua require("cmp").setup.buffer {enabled = false}<CR>', {})
