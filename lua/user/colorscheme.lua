local colorscheme = "tokyonight"

require("tokyonight").setup({
  -- style = "night",
  style = "moon",
  -- disable italic for functions
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
  },
})

local status_ok, _ = pcall(vim.cmd.colorscheme, colorscheme)
if not status_ok then
  return
end
