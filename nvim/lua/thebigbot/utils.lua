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

require('colorizer').setup()

require("which-key").setup({})

require("oil").setup({
  view_options = {
    show_hidden = true,
  }
})

require('aerial').setup({
  layout = {
    max_width = { 40, 0.2 },
    width = nil,
    min_width = 25,
  }
})

require("autoclose").setup()

require('Comment').setup({})

require('nvim-ts-autotag').setup()
