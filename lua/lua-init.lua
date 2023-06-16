require "user.impatient"
require "user.options"
require "user.colorscheme"
require "user.keymaps"
require "user.lualine"

-- disable all plugins for large files.
local filename = vim.fn.expand("%")
local filesize = vim.fn.getfsize(filename)
if filesize > 10*1024*1024 then
  vim.opt.loadplugins = false
  return
end

require "user.plugins"
require "user.autocommands"
require "user.cmp"
require "user.telescope"
require "user.gitsigns"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.toggleterm"
require "user.project"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"
