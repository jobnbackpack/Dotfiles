return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        -- variant = "moon",
        disable_background = true,
        styles = {
          transparency = true,
        },
      })
    end,
  },

  { "kepano/flexoki-neovim", name = "flexoki" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "flexoki-dark",
    },
  },
}
