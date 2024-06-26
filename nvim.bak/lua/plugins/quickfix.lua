return {
  -- fix breaking change on neovim with gitsigns
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      _extmark_signs = false,
    },
  },
}
