return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>a",       "<cmd>:lua require('harpoon.mark').add_file()<cr>",        desc = "Add current file to harpoon" },
    { "<C-h>",           "<cmd>:lua require('harpoon.ui').nav_prev()<cr>" },
    { "<C-l>",           "<cmd>:lua require('harpoon.ui').nav_next()<cr>" },
    { "<leader><space>", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<cr>", desc = "Open harpoon menu" },
  },
}
