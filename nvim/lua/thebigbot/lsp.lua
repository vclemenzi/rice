local lsp_servers = {
  "lua_ls",
  "rust_analyzer",
  "tsserver",
  "pyright",
  "gopls",
  "cssls",
  "tailwindcss",
  "astro",
  "svelte",
  "eslint",
  "emmet_ls"
}

require("mason").setup()
local mlsp = require("mason-lspconfig")

mlsp.setup({
  ensure_installed = lsp_servers
})


local on_attach = function(client)
  require("lsp-format").on_attach(client)
end

mlsp.setup_handlers {
  function(server)
    require('lspconfig')[server].setup({ on_attach = on_attach })
  end
}
