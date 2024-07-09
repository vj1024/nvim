-- disable all plugins for large files.
local filename = vim.fn.expand("%")
local filesize = vim.fn.getfsize(filename)
if filesize > 20 * 1024 * 1024 then
  vim.opt.loadplugins = false
  vim.cmd([[colorscheme morning]])
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end

-- disable mouse
vim.opt.mouse = ""
