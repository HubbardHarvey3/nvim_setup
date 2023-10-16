local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({
    buffer = bufnr
  })
end)

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
})
require('lspconfig').lua_ls.setup({
  single_file_support = false,
  on_attach = function(client, bufnr)
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
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
})
require('lspconfig').terraformls.setup({
  on_attach = function(client, bufnr)
    print("What up terraformers")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
})
require('lspconfig').bashls.setup({
  on_attach = function(client, bufnr)
    print("What up scripters")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
})
require('lspconfig').groovyls.setup({
  on_attach = function(client, bufnr)
    print("What up pipe layers")
    lsp_zero.default_keymaps({
      buffer = bufnr
    })
  end,
})
