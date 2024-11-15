local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#F28B8E" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#E5C07B" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#8AC7FF" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#E3B88A" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#B2D8A1" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D89BEF" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#7FD1D9" })
end)

require("ibl").setup({
  indent = {
    highlight = highlight,
    char = "▏",
    -- char = "┊",
  },
  whitespace = {
    highlight = highlight,
    remove_blankline_trail = true,
  },
})
