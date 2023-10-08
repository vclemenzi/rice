return {
  'j-morano/buffer_manager.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<C-h>", "<cmd>:lua require('buffer_manager.ui').nav_prev()<cr>" },
    { "<C-l>", "<cmd>:lua require('buffer_manager.ui').nav_next()<cr>" },
    {
      "<leader><space>",
      "<cmd>:lua require('buffer_manager.ui').toggle_quick_menu()<cr>",
      desc =
      "View buffer navigator menu"
    },
  },
}
