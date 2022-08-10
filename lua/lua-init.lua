require "user.options"
require "user.colorscheme"

-- do not load plugins when open sql file.
local ext = vim.fn.expand("%"):match(".+%.(%w+)$")
for _, v in pairs({ "sql", "log" }) do
  if v == ext then
    return
  end
end

require "user.keymaps"
require "user.plugins"
require "user.autocommands"
require "user.cmp"
require "user.telescope"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.gitsigns"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.impatient"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"
