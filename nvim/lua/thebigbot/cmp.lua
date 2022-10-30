return require('cmp').setup {
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = {
      ['<C-p>'] = require('cmp').mapping.select_prev_item(),
      ['<C-n>'] = require('cmp').mapping.select_next_item(),
      ['<C-d>'] = require('cmp').mapping.scroll_docs(-4),
      ['<C-f>'] = require('cmp').mapping.scroll_docs(4),
      ['<C-Space>'] = require('cmp').mapping.complete(),
      ['<C-e>'] = require('cmp').mapping.close(),
      ['<CR>'] = require('cmp').mapping.confirm({
        behavior = require('cmp').ConfirmBehavior.Replace,
        select = true,
      }),
      ['<Tab>'] = function(fallback)
        if require('cmp').visible() then
          require('cmp').select_next_item()
        elseif vim.fn['vsnip#available'](1) == 1 then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>(vsnip-expand-or-jump)', true, true, true), '')
        else
          fallback()
        end
      end,
      ['<S-Tab>'] = function(fallback)
        if require('cmp').visible() then
          require('cmp').select_prev_item()
        elseif vim.fn['vsnip#jumpable'](-1) == 1 then
          vim.fn.feedkeys(vim.api.nvim_replace_termcodes('<Plug>(vsnip-jump-prev)', true, true, true), '')
        else
          fallback()
        end
      end,
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'vsnip' },
      { name = 'buffer' },
    },
  }