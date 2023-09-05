return {
  'stevearc/oil.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>Oil<cr>", desc = "Browse files" }
  },
  init = function()
    require("oil").setup({
      view_options = {
        show_hidden = true,
      }
    })
  end,
}
