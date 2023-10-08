require("hharvey.remap")
require("hharvey.set")
require("hharvey.packer")
require("hharvey.lsp")



-- TreeSitter Setup
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "terraform", "lua", "vim", "help", "go" },

  sync_install = false,

  auto_install = true,

  ignore_install = {},


  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = false,
  },
}



