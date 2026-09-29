return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main", 
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").setup()

      local languages = {
        -- Essential system languages
        "lua",
        "vim",
        "vimdoc",
        "query",
        "markdown",
        "markdown_inline",
        
        -- Other languages
        "python",
        "javascript",
        "css",
        "html",
      }

      require("nvim-treesitter").install(languages)
    end,
  },
}
