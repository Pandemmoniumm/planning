return {
  {
    url = "https://github.com/folke/snacks.nvim",
    name = "snacks",
    priority = 1000,
    lazy = false,
    opts = {
      bigfile = { enabled = true },
      dashboard = {
        enabled = true,
        preset = {
          header = require("assets.art"),
        },
      },
      explorer = { enabled = false },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = {
        enabled = true,
        left = { "mark", "sign" },
        right = { "fold", "git" },
      },
      words = { enabled = true },
      terminal = { enabled = false },
    },
    -- This whole function is to assign colors to the dashboard to better integrate with the theme.
    init = function()
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "catppuccin*",
        callback = function()
          vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#cba6f7", bold = true })
          vim.api.nvim_set_hl(0, "SnacksDashboardKey",    { fg = "#cba6f7" })
          vim.api.nvim_set_hl(0, "SnacksDashboardDesc",   { fg = "#cdd6f4" })
          vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = "#7f849c" })
        end,
      })
    end,
  },
  {
    url = "https://github.com/nvim-mini/mini.pairs",
    name = "mini-pairs",
    version = false,
    lazy = true,
    opts = {}
  }
}return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      explorer = { enabled = false },
      indent = { enabled = true },
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = true },
      scope = { enabled = true },
      scroll = { enabled = true },
      statuscolumn = {
        enabled = true,
        left = { "mark", "sign" },
        right = { "fold", "git" },
      },
      words = { enabled = true },
      terminal = { enabled = false },
    },
  },
}



