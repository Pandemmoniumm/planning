return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
    require("catppuccin").setup({
        flavour = "mocha",
        auto_integrations = true,
        integrations = {
          snacks = {
            enabled = true,
            indent_scope_color = "lavender"
          }
        }
      })
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}

