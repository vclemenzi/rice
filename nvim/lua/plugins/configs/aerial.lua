return {
  'stevearc/aerial.nvim',
  dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  lazy = true,
  keys = {
    { "<leader>xa", "<cmd>AerialToggle!<cr>", desc = "Toggle Aerial panel to view functions and declarations" },
  },
  config = function(_, o)
    require("aerial").setup({
      layout = {
        max_width = { 40, 0.2 },
        width = nil,
        min_width = 25,
      }
    })
  end,
}
