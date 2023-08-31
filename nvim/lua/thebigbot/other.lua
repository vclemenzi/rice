require("autoclose").setup()

vim.opt.termguicolors = true
vim.wo.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.api.nvim_set_option("clipboard", "unnamedplus")

require('Comment').setup({
  filetypes = { "html", "xml", "jsx", "tsx" },
})

require('nvim-ts-autotag').setup()

function GoToLine()
  local current_line = vim.fn.line('.')
  local lnum = vim.fn.input('Enter the line number: ')
  lnum = tonumber(lnum)

  if lnum then
    local target_line = current_line + lnum
    vim.cmd('normal! ' .. target_line .. 'G')
  else
    print("Invalid line number!")
  end
end

vim.api.nvim_set_keymap('n', '<leader>l', ':lua GoToLine()<CR>', { noremap = true })

require("oil").setup({
  view_options = {
    show_hidden = true,
  }
})

vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

require('colorizer').setup()

require("which-key").setup({})

vim.o.timeout    = true
vim.o.timeoutlen = 500
