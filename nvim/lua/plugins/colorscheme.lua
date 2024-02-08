return {
  {
    -- "craftzdog/solarized-osaka.nvim",
    "catppuccin/nvim",
    lazy = true,
    priority = 1000,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavor = "mocha",
        transparent_background = true,
        no_italic = false, -- Force no italic
        no_bold = false, -- Force no bold
        no_underline = false,
      })
    end,
    opts = {},
  },
  {
    "norcalli/nvim-colorizer.lua",
    name = "colorizer",
    config = function()
      require("colorizer").setup({
        "*",
      }, { rgb_fn = true, hsl_fn = true })
    end,
  },
  -- add gruvbox
  -- { "ellisonleao/gruvbox.nvim", opts = {
  --   transparent = true,
  -- } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "solarized-osaka",
      colorscheme = "catppuccin",
    },
  },
}
