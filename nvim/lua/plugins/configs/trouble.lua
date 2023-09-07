return {
  'folke/trouble.nvim',
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = true,
  keys = {
    { "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble panel to view errors and warnings" },
  },
}
