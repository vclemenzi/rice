vim.api.nvim_set_keymap('n', '<C-c>', [[<cmd>tabnew<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-q>', [[<cmd>tabclose<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-a>', [[<cmd>tabprev<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-d>', [[<cmd>tabnext<CR>]], { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<C-s>', [[<cmd>split<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-w>', [[<cmd>vsplit<CR>]], { noremap = true, silent = true })
