vim.keymap.set("n", "<leader>e", require("oil").open)

vim.api.nvim_set_keymap('n', '<leader>f', [[<cmd>lua require('telescope.builtin').find_files()<CR>]],
  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>o', [[<cmd>lua require('telescope.builtin').vim_options()<CR>]],
  { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>b', [[<cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>]],
  { noremap = true, silent = true })

-- Code
vim.api.nvim_set_keymap('n', '<leader>xx', [[<cmd>TroubleToggle<CR>]],
  { noremap = true, silent = true })


-- Tabs
vim.api.nvim_set_keymap('n', '<leader>tn', [[<cmd>tabnew<CR>]],
  { noremap = true, silent = true })

-- Tmux
vim.g.tmux_navigator_no_mappings = 1

vim.api.nvim_set_keymap('n', '<silent> {Left-Mapping}', ':<C-U>TmuxNavigateLeft<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> {Down-Mapping}', ':<C-U>TmuxNavigateDown<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> {Up-Mapping}', ':<C-U>TmuxNavigateUp<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> {Right-Mapping}', ':<C-U>TmuxNavigateRight<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', '<silent> {Previous-Mapping}', ':<C-U>TmuxNavigatePrevious<cr>', { noremap = true })
