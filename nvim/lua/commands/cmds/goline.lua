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
