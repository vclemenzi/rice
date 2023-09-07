return {
  'j-morano/buffer_manager.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,
  keys = {
    { "<leader><space>", "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<cr>", desc = "Find existing buffers" },
  }
}
