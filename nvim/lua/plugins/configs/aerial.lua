local T = {}

T["setup"] = {
  layout = {
    max_width = { 40, 0.2 },
    width = nil,
    min_width = 25,
  }
}

T["keys"] = {
  { "<leader>xa", "<cmd>AerialToggle!<cr>", desc = "Toggle Aerial panel to view functions and declarations" },
}

return T
