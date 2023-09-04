local T = {}

T["setup"] = {}

T["keys"] = {
  { "<leader><space>", "<cmd>lua require('buffer_manager.ui').toggle_quick_menu()<cr>", desc = "Find existing buffers" },
}

return T
