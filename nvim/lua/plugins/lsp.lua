return {
  -- tools
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "stylua",
        "selene",
        "luacheck",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",
        "astro-language-server",
        "angular-language-server",
        "html-lsp",
        "htmx-lsp",
        "java-language-server",
        "svelte-language-server",
      })
    end,
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-Y>",
          clear_suggestion = "<C-]>",
          accept_word = "<C-j>",
        },
        ignore_filetypes = { cpp = true },
        color = {
          -- suggestion_color = "#ffffff",
          cterm = 244,
        },
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built in keymaps for more manual control
      })
    end,
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = true,
  },

  -- -- lsp servers
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     inlay_hints = { enabled = true },
  --     ---@type lspconfig.options
  --     servers = {
  --       cssls = {},
  --       tailwindcss = {
  --         root_dir = function(...)
  --           return require("lspconfig.util").root_pattern(".git")(...)
  --         end,
  --       },
  --       tsserver = {
  --         root_dir = function(...)
  --           return require("lspconfig.util").root_pattern(".git")(...)
  --         end,
  --         single_file_support = false,
  --         settings = {
  --           typescript = {
  --             inlayHints = {
  --               includeInlayParameterNameHints = "literal",
  --               includeInlayParameterNameHintsWhenArgumentMatchesName = false,
  --               includeInlayFunctionParameterTypeHints = true,
  --               includeInlayVariableTypeHints = false,
  --               includeInlayPropertyDeclarationTypeHints = true,
  --               includeInlayFunctionLikeReturnTypeHints = true,
  --               includeInlayEnumMemberValueHints = true,
  --             },
  --           },
  --           javascript = {
  --             inlayHints = {
  --               includeInlayParameterNameHints = "all",
  --               includeInlayParameterNameHintsWhenArgumentMatchesName = false,
  --               includeInlayFunctionParameterTypeHints = true,
  --               includeInlayVariableTypeHints = true,
  --               includeInlayPropertyDeclarationTypeHints = true,
  --               includeInlayFunctionLikeReturnTypeHints = true,
  --               includeInlayEnumMemberValueHints = true,
  --             },
  --           },
  --         },
  --       },
  --       html = {},
  --       yamlls = {
  --         settings = {
  --           yaml = {
  --             keyOrdering = false,
  --           },
  --         },
  --       },
  --       lua_ls = {
  --         -- enabled = false,
  --         single_file_support = true,
  --         settings = {
  --           Lua = {
  --             workspace = {
  --               checkThirdParty = false,
  --             },
  --             completion = {
  --               workspaceWord = true,
  --               callSnippet = "Both",
  --             },
  --             misc = {
  --               parameters = {
  --                 -- "--log-level=trace",
  --               },
  --             },
  --             hint = {
  --               enable = true,
  --               setType = false,
  --               paramType = true,
  --               paramName = "Disable",
  --               semicolon = "Disable",
  --               arrayIndex = "Disable",
  --             },
  --             doc = {
  --               privateName = { "^_" },
  --             },
  --             type = {
  --               castNumberToInteger = true,
  --             },
  --             diagnostics = {
  --               disable = { "incomplete-signature-doc", "trailing-space" },
  --               -- enable = false,
  --               groupSeverity = {
  --                 strong = "Warning",
  --                 strict = "Warning",
  --               },
  --               groupFileStatus = {
  --                 ["ambiguity"] = "Opened",
  --                 ["await"] = "Opened",
  --                 ["codestyle"] = "None",
  --                 ["duplicate"] = "Opened",
  --                 ["global"] = "Opened",
  --                 ["luadoc"] = "Opened",
  --                 ["redefined"] = "Opened",
  --                 ["strict"] = "Opened",
  --                 ["strong"] = "Opened",
  --                 ["type-check"] = "Opened",
  --                 ["unbalanced"] = "Opened",
  --                 ["unused"] = "Opened",
  --               },
  --               unusedLocalExclude = { "_*" },
  --             },
  --             format = {
  --               enable = false,
  --               defaultConfig = {
  --                 indent_style = "space",
  --                 indent_size = "2",
  --                 continuation_indent_size = "2",
  --               },
  --             },
  --           },
  --         },
  --       },
  --     },
  --     setup = {},
  --   },
  -- },
}
