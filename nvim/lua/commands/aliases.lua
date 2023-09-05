vim.cmd [[command! Q q]]
vim.cmd [[command! W w]]
vim.cmd [[command! Wq wq]]
vim.cmd [[command! WQ wq]]

vim.cmd [[command! Settings Telescope vim_options]]
vim.cmd [[command! Test lua print("Hello World!")]]

vim.cmd [[command! CratesUpdate lua require('crates').upgrade_all_crates()]]
