return {
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
      },
    },
  },

  -- animation
  {
    "echasnovski/mini.animate",
    event = "VeryLazy",
    opts = function(_, opts)
      opts.scroll = {
        enable = false,
      }
    end,
  },

  -- logo
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    opts = function(_, opts)
      local logo = [[
     ██╗ ██████╗ ██████╗ ███╗   ██╗██████╗  █████╗  ██████╗██╗  ██╗██████╗  █████╗  ██████╗██╗  ██╗
     ██║██╔═══██╗██╔══██╗████╗  ██║██╔══██╗██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔══██╗██╔════╝██║ ██╔╝
     ██║██║   ██║██████╔╝██╔██╗ ██║██████╔╝███████║██║     █████╔╝ ██████╔╝███████║██║     █████╔╝ 
██   ██║██║   ██║██╔══██╗██║╚██╗██║██╔══██╗██╔══██║██║     ██╔═██╗ ██╔═══╝ ██╔══██║██║     ██╔═██╗ 
╚█████╔╝╚██████╔╝██████╔╝██║ ╚████║██████╔╝██║  ██║╚██████╗██║  ██╗██║     ██║  ██║╚██████╗██║  ██╗
 ╚════╝  ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝
      ]]

      logo = string.rep("\n", 8) .. logo .. "\n\n"
      opts.config.header = vim.split(logo, "\n")
    end,
  },
}
