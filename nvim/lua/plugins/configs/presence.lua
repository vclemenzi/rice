return {
  'vclemenzi/presence.nvim',
  config = function()
    require("presence").setup({
      auto_update = true,
      neovim_image_text = "I know how to exit vim",
      main_image = "file",
      enable_line_number = true,

      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text = "Reading %s",
      workspace_text = "Working on %s",
      line_number_text = "Line %s out of %s",
    })
  end,
}
