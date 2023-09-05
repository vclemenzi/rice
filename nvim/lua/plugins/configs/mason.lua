return {
  'williamboman/mason.nvim',
  dependencies = { "williamboman/mason.nvim" },
  init = function()
    require("mason").setup({
      ensure_installed = {
        "prettier"
      }
    })
  end,
}
