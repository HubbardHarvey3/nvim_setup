-- Status Line Setup, probably need to move.
local ctp_feline = require('catppuccin.groups.integrations.feline')


require("feline").setup({
    components = ctp_feline.get(),
})
