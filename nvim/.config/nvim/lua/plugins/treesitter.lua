return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
      require("nvim-treesitter.config").setup {
          ensure_installed = {"c", "lua", "fish", "vim"},
          highlight = { enable = true },
      }
  end
}

