local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({
    buffer = bufnr
  })
end)

local cmp = require('cmp')

cmp.setup({
  sources = {
    {name = 'nvim_lsp'},
  },
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({select = false}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensured_installed = {'pylsp', 'gopls', 'lua_ls', 'terraformls', 'bashls', 'groovyls'},
  handlers = {
    lsp_zero.default_setup,
  },
})
require('lspconfig').gopls.setup({
  on_attach = function(client, bufnr)
    print("What up gophers")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
  capabilities = lsp_capabilities,
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})
require('lspconfig').lua_ls.setup({
  single_file_support = false,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
  capabilities = lsp_capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      }
    },
  },
})
require('lspconfig').pylsp.setup({
  on_attach = function(client, bufnr)
    print("What up pythonistas")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
  capabilities = lsp_capabilities,
})
require('lspconfig').terraformls.setup({
  on_attach = function(client, bufnr)
    print("What up terraformers")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
  capabilities = lsp_capabilities,
})
require('lspconfig').bashls.setup({
  on_attach = function(client, bufnr)
    print("What up scripters")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
  capabilities = lsp_capabilities,
})
require('lspconfig').groovyls.setup({
  on_attach = function(client, bufnr)
    print("What up pipe layers")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
  capabilities = lsp_capabilities,
})


