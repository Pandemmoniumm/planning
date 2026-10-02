-- Bootstrap lazy.nvim
--renamed the path to /lazy/lazy to stop ghost entries between this one and another config. see the comment above " url = "https://github.com..."
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy."
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import plugins
    { 
	    import = "plugins" 
    },
   --This whole block here is just to change the display name from "lazy.nvim" to simply "lazy."
    {
	url = "https://github.com/folke/lazy.nvim.git",
	name = "lazy"
},

  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "catppuccin-nvim" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})
-- Fix timing issue with colored dashboard and catppuccin not loading before the dashboard by manually assigning the variables before catppuccin takes over.
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#b4befe", bold = true })
vim.api.nvim_set_hl(0, "SnacksDashboardKey",    { fg = "#cba6f7" })
vim.api.nvim_set_hl(0, "SnacksDashboardDesc",   { fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "SnacksDashboardFooter", { fg = "#7f849c" })
