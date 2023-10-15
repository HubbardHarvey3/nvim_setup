local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensured_installed = {'pylsp', 'gopls', 'lua_ls'},
  handlers = {
    lsp_zero.default_setup,
    lua_ls = function()
      require('lspconfig').lua_ls.setup({
        single_file_support = false,
        on_attach = function(client, bufnr)
          print('hello lua_ls')
        end,
        settings = {
          Lua = {
            diagnostics = {
              globals = {'vim'},
            }
          },
        },
      })
    end,
    -- tried adding pycodestyle config options here around ignoring warnings, but it failed.
    -- It failed in that functionality was reduced, I could ignore warnings, but then couldn't see pop ups around warnings and errors.
    -- Instead, had to create the ~/.config/pycodestyle file and configure options there.
    -- Moral of the story, although Mason is managing installs, first read the lsp/lint docs for how to configure.
  },
})

