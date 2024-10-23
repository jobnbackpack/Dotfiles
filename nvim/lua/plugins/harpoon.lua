return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      harpoon:setup()
    end,
    keys = {
      {
        "<leader>a",
        function()
          require("harpoon"):list():add()
        end,
        desc = "harpoon file",
      },
      {
        "<C-e>",
        function()
          local harpoon = require("harpoon")
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "harpoon menu",
      },
      {
        "<leader>h",
        function()
          require("harpoon"):list():select(1)
        end,
        desc = "harpoon 1",
      },
      {
        "<leader>t",
        function()
          require("harpoon"):list():select(2)
        end,
        desc = "harpoon 2",
      },
      {
        "<leader>n",
        function()
          require("harpoon"):list():select(3)
        end,
        desc = "harpoon 3",
      },
      {
        "<leader>s",
        function()
          require("harpoon"):list():select(4)
        end,
        desc = "harpoon 4",
      },
    },

    --   vim.keymap.set("n", "<leader>a", function()
    --     harpoon:list():add()
    --   end)
    --   vim.keymap.set("n", "<C-e>", function()
    --     harpoon.ui:toggle_quick_menu(harpoon:list())
    --   end)
    --
    --   vim.keymap.set("n", "<C-h>", function()
    --     harpoon:list():select(1)
    --   end)
    --   vim.keymap.set("n", "<C-t>", function()
    --     harpoon:list():select(2)
    --   end)
    --   vim.keymap.set("n", "<C-n>", function()
    --     harpoon:list():select(3)
    --   end)
    --   vim.keymap.set("n", "<C-s>", function()
    --     harpoon:list():select(4)
    --   end)
    --   vim.keymap.set("n", "<leader><C-h>", function()
    --     harpoon:list():replace_at(1)
    --   end)
    --   vim.keymap.set("n", "<leader><C-t>", function()
    --     harpoon:list():replace_at(2)
    --   end)
    --   vim.keymap.set("n", "<leader><C-n>", function()
    --     harpoon:list():replace_at(3)
    --   end)
    --   vim.keymap.set("n", "<leader><C-s>", function()
    --     harpoon:list():replace_at(4)
    --   end)
    -- end,
  },
}
