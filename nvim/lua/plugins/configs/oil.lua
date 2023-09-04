local T = {}

T["setup"] = {
  default_file_explorer = true,
  view_options = {
    show_hidden = true,
  }
}

T["keys"] = {
  { "<leader>e", "<cmd>Oil<cr>", desc = "Browse files" },
}

return T
