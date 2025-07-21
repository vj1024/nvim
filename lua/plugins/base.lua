return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      --style = "day",
      style = "night",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },

  {
    "numToStr/Comment.nvim",
    opts = {},
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.options.component_separators = { left = "|", right = "|" }
      opts.options.section_separators = { left = "|", right = "|" }
      table.insert(opts.sections.lualine_c, "encoding")
      table.insert(opts.sections.lualine_c, "filesize")
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.indent.enable = false
    end,
  },

  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.cmdline = { view = "cmdline" } -- default: cmdline_popup
    end,
  },
}
