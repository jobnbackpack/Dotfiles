return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    config = function()
      require("neo-tree").setup({
        window = {
          position = "right",
          width = 25,
        },
      })
      vim.api.nvim_create_autocmd("TermClose", {
        pattern = "*lazygit",
        callback = function()
          if package.loaded["neo-tree.sources.git_status"] then
            require("neo-tree.sources.git_status").refresh()
          end
        end,
      })
    end,
  },
}
