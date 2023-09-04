require("lazy").setup({
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = require("plugins.configs.telescope").keys,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    keys = require("plugins.configs.tmux").keys,
  },
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason.nvim',
    opts = function()
      return require("plugins.configs.mason").setup
    end,
    init = function(_, o)
      require("mason").setup(o)
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    dependencies = { "neovim/nvim-lspconfig" },
    opts = function()
      return require("plugins.configs.mason-lsp").setup
    end,
    init = function(_, o)
      local m = require("mason-lspconfig")

      m.setup(o)

      m.setup_handlers {
        function(server)
          require('lspconfig')[server].setup({
            on_attach = function()

            end
          })
        end
      }
    end,
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
    'hrsh7th/nvim-cmp',
    dependencies = { 'onsails/lspkind.nvim' },
    init = function()
      -- The config should only be called when the plugin has been loaded
      require("cmp").setup(require("plugins.configs.cmp").setup)
    end,
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
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = function()
      return require("plugins.configs.treesitter").setup
    end,
    config = function(_, o)
      require("nvim-treesitter.configs").setup(o)
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function ()
      return require("plugins.configs.lualine").setup
    end,
    config = function(_, o)
      require("lualine").setup(o)
    end,
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
    'ThePrimeagen/vim-be-good' -- Just for fun
  },
  {
    'folke/todo-comments.nvim',
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    'j-morano/buffer_manager.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = require("plugins.configs.bfm").keys,
  },
  {
    'tpope/vim-fugitive'
  },
  {
    'lewis6991/gitsigns.nvim',
    config = function ()
      require("gitsigns").setup()

      vim.cmd [[Gitsigns toggle_current_line_blame]]
    end
  },
  {
    'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    init = function()
      local status_ok, alpha = pcall(require, "alpha")
        if not status_ok then
          return
      end

      -- The config should only be called when the plugin has been loaded
      alpha.setup(require("plugins.configs.alpha").setup)
    end,

  },
  {
    'numToStr/Comment.nvim',
    config = function()
      require("Comment").setup()
    end,
  },
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = require("plugins.configs.oil").keys,
    opts = function()
      return require("plugins.configs.oil").setup
    end,
    init = function(_, o)
      require("oil").setup(o)
    end,
  },
  {
    'folke/trouble.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = require("plugins.configs.trouble").keys,
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
    'stevearc/aerial.nvim',
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    lazy = true,
    keys = require("plugins.configs.aerial").keys,
    opts = function()
      return require("plugins.configs.aerial").setup
    end,
    config = function(_, o)
      require("aerial").setup(o)
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = function()
      return require("plugins.configs.lint")
    end,
    config = function(_, o)
      require("lint").linters_by_ft = o.linters_by_ft

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
  {
    "mhartington/formatter.nvim",
    config = function()
      -- The config should only be called when the plugin has been loaded
      require("formatter").setup(require("plugins.configs.formatter").setup)

      vim.api.nvim_create_autocmd({ "BufWritePost" }, {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  }
})
