return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "css",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "java",
        "javascript",
        "typescript",
        "tsx",
        "php",
        "rust",
        "scss",
        "sql",
        "svelte",
      },

      highlight = {
        enable = true,
      },

      -- https://github.com/nvim-treesitter/playground#query-linter
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
          astro = "astro",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
