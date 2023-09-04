vim.o.hlsearch = false
vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.termguicolors = true
vim.wo.relativenumber = true

vim.api.nvim_set_option("clipboard", "unnamedplus")

vim.opt.cursorline    = true
vim.opt.cursorlineopt = "number"

vim.o.timeout         = true
vim.o.timeoutlen      = 500

vim.cmd [[command! Q q]]
vim.cmd [[command! W w]]
vim.cmd [[command! Wq wq]]

vim.cmd [[command! Settings Telescope vim_options]]
vim.cmd [[command! Test lua print("Hello World!")]]

vim.cmd [[command! CratesUpdate lua require('crates').upgrade_all_crates()]]
