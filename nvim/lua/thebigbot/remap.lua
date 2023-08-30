vim.api.nvim_set_keymap("n", "<leader>e", [[<cmd>lua require("oil").open<CR>]],
  { noremap = true, silent = true, desc = "Browse files" })

-- Telescope: Find Files
vim.api.nvim_set_keymap('n', '<leader>f', [[<cmd>lua require('telescope.builtin').find_files()<CR>]],
  { noremap = true, silent = true, desc = "Open file search using Telescope" })

-- Telescope: View Vim Options
vim.api.nvim_set_keymap('n', '<leader>o', [[<cmd>lua require('telescope.builtin').vim_options()<CR>]],
  { noremap = true, silent = true, desc = "Open Vim options selection using Telescope" })

-- Buffer Manager: Toggle Quick Menu
vim.api.nvim_set_keymap('n', '<leader>b', [[<cmd>lua require("buffer_manager.ui").toggle_quick_menu()<CR>]],
  { noremap = true, silent = true, desc = "Toggle quick buffer management menu" })

-- Trouble Plugin: Toggle
vim.api.nvim_set_keymap('n', '<leader>xx', [[<cmd>TroubleToggle<CR>]],
  { noremap = true, silent = true, desc = "Toggle Trouble panel to view errors and warnings" })

-- Tabs: Open New Tab
vim.api.nvim_set_keymap('n', '<leader>tn', [[<cmd>tabnew<CR>]],
  { noremap = true, silent = true, desc = "Open a new editing tab" })

-- Tmux Navigation
vim.g.tmux_navigator_no_mappings = 1

vim.api.nvim_set_keymap('n', '<silent> {Left-Mapping}', ':<C-U>TmuxNavigateLeft<cr>',
  { noremap = true, desc = "Navigate left in Tmux" })
vim.api.nvim_set_keymap('n', '<silent> {Down-Mapping}', ':<C-U>TmuxNavigateDown<cr>',
  { noremap = true, desc = "Navigate down in Tmux." })
vim.api.nvim_set_keymap('n', '<silent> {Up-Mapping}', ':<C-U>TmuxNavigateUp<cr>',
  { noremap = true, desc = "Navigate up in Tmux" })
vim.api.nvim_set_keymap('n', '<silent> {Right-Mapping}', ':<C-U>TmuxNavigateRight<cr>',
  { noremap = true, desc = "Navigate right in Tmux" })
vim.api.nvim_set_keymap('n', '<silent> {Previous-Mapping}', ':<C-U>TmuxNavigatePrevious<cr>',
  { noremap = true, desc = "Navigate to previous location in Tmux" })

-- DAP Debugging
vim.api.nvim_set_keymap('n', '<leader>dp', [[<cmd> DapToggleBreakpoint <CR>]],
  { noremap = true, silent = true, desc = "Toggle breakpoint using DAP" })

vim.api.nvim_set_keymap('n', '<leader>do',
  [[<cmd>lua require('dap.ui.widgets').sidebar(require('dap.ui.widgets').scopes).open()<CR>]],
  { silent = true, desc = "Open DAP sidebar for debugging scopes" })

vim.api.nvim_set_keymap('n', '<leader>dgt',
  [[<cmd>lua require('dap-go').debug_test()<CR>]],
  { silent = true, desc = "Start debugging Go tests using DAP" })

vim.api.nvim_set_keymap('n', '<leader>dgl',
  [[<cmd>lua require('dap-go').debug_last_test()<CR>]],
  { silent = true, desc = "Debug the last Go test executed using DAP" })
