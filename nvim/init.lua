vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.cmd("silent! intro")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("thebigbot.plugins")
require("thebigbot.remap")
require("thebigbot.lsp")
require("thebigbot.cmp")
require("thebigbot.lualine")
require("thebigbot.git")
require("thebigbot.colorscheme")
require("thebigbot.utils")
require("thebigbot.aliases")
require("thebigbot.alpha")
require("thebigbot.dap")
require("thebigbot.treesitter")
require("thebigbot.tabs")
require("thebigbot.lint")
require("thebigbot.format")
require("thebigbot")
