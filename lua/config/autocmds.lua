-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- set indent to 2 spaces.
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "sh", "json", "yaml", "lua" },
  callback = function()
    vim.bo.shiftwidth = 2 -- Indentation width: 2 spaces
    vim.bo.tabstop = 2 -- Tab displays as 2 spaces
    vim.bo.softtabstop = 2 -- Insert 2 spaces when editing
    vim.bo.expandtab = true -- Convert tabs to spaces
  end,
})
