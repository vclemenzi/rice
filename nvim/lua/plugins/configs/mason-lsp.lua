local T = {}

T["setup"] = {
  ensure_installed = {
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
    "emmet_ls",
    "clangd",
  }
}

T["keys"] = {}

return T
