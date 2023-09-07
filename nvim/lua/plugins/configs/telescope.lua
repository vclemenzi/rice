return {
  'nvim-telescope/telescope.nvim',
  cmd = "Telescope",
  tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  lazy = true,
  keys = {
    {
      "<leader>?",
      "<cmd>lua require('telescope.builtin').find_files()<cr>",
      desc = "Find files"
    },
    {
      "<leader>/",
      "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown({ winblend = 10, previewer = false }))<cr>",
      desc = "Fuzzily search in current buffer"
    },
    {
      "<leader>sg",
      "<cmd>lua require('telescope.builtin').git_files()<cr>",
      desc = "Search git files"
    },
    {
      "<leader>sf",
      "<cmd>lua require('telescope.builtin').find_files()<cr>",
      desc = "Search files"
    },
    {
      "<leader>so",
      "<cmd>lua require('telescope.builtin').oldfiles()<cr>",
      desc = "Search old files"
    },
    {
      "<leader>sh",
      "<cmd>lua require('telescope.builtin').help_tags()<cr>",
      desc = "Search help"
    },
    {
      "<leader>sw",
      "<cmd>lua require('telescope.builtin').grep_string()<cr>",
      desc = "Search current word"
    },
    {
      "<leader>sg",
      "<cmd>lua require('telescope.builtin').live_grep()<cr>",
      desc = "Search by grep"
    },
    {
      "<leader>o",
      "<cmd>lua require('telescope.builtin').vim_options()<cr>",
      desc = "Open Vim options selection using Telescope"
    },
  },
}
