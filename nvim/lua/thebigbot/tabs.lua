vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

function TabSet(n)
  vim.opt.tabstop = n
  vim.opt.shiftwidth = n
  vim.opt.expandtab = true
end

vim.cmd("command! -nargs=1 TabSet :lua TabSet(<args>)")
