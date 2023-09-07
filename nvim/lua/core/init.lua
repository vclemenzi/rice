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

require("core.remap")
