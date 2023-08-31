-- Oil Plugin: Open Files
vim.keymap.set("n", "<leader>e", require('oil').open, { desc = "Browse files" })

-- Telescope: Find Recently Opened Files
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = "Find recently opened files" })

-- Buffer Manager: Toggle Quick Menu
vim.keymap.set('n', '<leader><space>', require('buffer_manager.ui').toggle_quick_menu, { desc = "Find existing buffers" })

vim.keymap.set('n', '<leader>/', function()
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = "Fuzzily search in current buffer" })

-- Telescope: Find Files
vim.keymap.set('n', '<leader>f', require('telescope.builtin').find_files, { desc = "Open file search using Telescope" })

-- Telescope: View Vim Options
vim.keymap.set('n', '<leader>o', require('telescope.builtin').vim_options,
  { desc = "Open Vim options selection using Telescope" })

-- Trouble Plugin: Toggle
vim.keymap.set('n', '<leader>xx', ":TroubleToggle<CR>", { desc = "Toggle Trouble panel to view errors and warnings" })

-- Tabs: Open New Tab
vim.keymap.set('n', '<leader>tn', ":tabnew<CR>", { desc = "Open a new editing tab" })

-- Tmux Navigation
vim.g.tmux_navigator_no_mappings = 1

vim.keymap.set('n', '{Left-Mapping}', ':<C-U>TmuxNavigateLeft<CR>', { desc = "Navigate left in Tmux" })
vim.keymap.set('n', '{Down-Mapping}', ':<C-U>TmuxNavigateDown<CR>', { desc = "Navigate down in Tmux." })
vim.keymap.set('n', '{Up-Mapping}', ':<C-U>TmuxNavigateUp<CR>', { desc = "Navigate up in Tmux" })
vim.keymap.set('n', '{Right-Mapping}', ':<C-U>TmuxNavigateRight<CR>', { desc = "Navigate right in Tmux" })
vim.keymap.set('n', '{Previous-Mapping}', ':<C-U>TmuxNavigatePrevious<CR>',
  { desc = "Navigate to the previous location in Tmux" })

-- DAP Debugging
vim.keymap.set('n', '<leader>dp', ":DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint using DAP" })

vim.keymap.set('n', '<leader>do', require('dap.ui.widgets').sidebar(require('dap.ui.widgets').scopes).open,
  { desc = "Open DAP sidebar for debugging scopes" })

vim.keymap.set('n', '<leader>dgt', require('dap-go').debug_test, { desc = "Start debugging Go tests using DAP" })

vim.keymap.set('n', '<leader>dgl', require('dap-go').debug_last_test,
  { desc = "Debug the last Go test executed using DAP" })
