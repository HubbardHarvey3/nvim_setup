local lsp_zero = require('lsp-zero')
lsp_zero.preset('recommended')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


lsp_zero.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp_zero.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here
  -- with the ones you want to install
  ensured_installed = {'pylsp', 'gopls', 'lua_ls'},
  handlers = {
    lsp_zero.default_setup,
    -- tried adding pycodestyle config options here around ignoring warnings, but it failed.
    -- It failed in that functionality was reduced, I could ignore warnings, but then couldn't see pop ups around warnings and errors.
    -- Instead, had to create the ~/.config/pycodestyle file and configure options there.
    -- Moral of the story, although Mason is managing installs, first read the lsp/lint docs for how to configure.
  },
})

-- Status Line Setup, probably need to move.
local ctp_feline = require('catppuccin.groups.integrations.feline')


require("feline").setup({
    components = ctp_feline.get(),
})
