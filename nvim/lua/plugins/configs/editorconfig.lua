return {
  'gpanders/editorconfig.nvim',
  config = function()
    require('editorconfig').properties.foo = function(bufnr, val)
      vim.b[bufnr].foo = val
    end
  end
}
