return {
  {
    'neovim/nvim-lspconfig',
  },
  {
    'hrsh7th/cmp-nvim-lsp'
  },
  {
    'hrsh7th/cmp-buffer'
  },
  {
    'hrsh7th/cmp-path'
  },
  {
    'hrsh7th/cmp-cmdline'
  },
  {
    'hrsh7th/cmp-vsnip'
  },
  {
    'hrsh7th/vim-vsnip'
  },
  {
    'onsails/lspkind.nvim'
  },
  {
    'MunifTanjim/prettier.nvim'
  },
  {
    'm4xshen/autoclose.nvim',
    init = function()
      require("autoclose").setup({})
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    init = function()
      require("nvim-ts-autotag").setup({})
    end,
  },
  {
    'catppuccin/nvim',
    name = "catppuccin",
    priority = 1000,
    init = function()
      vim.cmd.colorscheme "catppuccin"
    end,
  },
  {
    'lukas-reineke/indent-blankline.nvim'
  },
  {
    'ThePrimeagen/vim-be-good'   -- Just for fun
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    'tpope/vim-fugitive'
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require("gitsigns").setup()

      vim.cmd [[Gitsigns toggle_current_line_blame]]
    end
  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require("Comment").setup()
    end,
  },
  {
    'folke/which-key.nvim',
    config = function()
      require("which-key").setup({})
    end,
  },
  {
    'saecki/crates.nvim',
    ft = { 'rust', 'toml' },
    lazy = true,
    config = function()
      local c = require("crates")

      c.setup({})
      c.show()
    end,
  },
  {
    'lukas-reineke/lsp-format.nvim',
  },
  {
    "utilyre/barbecue.nvim",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("barbecue").setup()
      require("barbecue.ui").update()
    end,
  }
}
