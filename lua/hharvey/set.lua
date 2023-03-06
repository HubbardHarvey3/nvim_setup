vim.filetype.add({
  filename = {
    ['Jenkinsfile'] = 'groovy',
    ['jenkinsfile'] = 'groovy',
    ['deploy.jenkinsfile'] = 'groovy',
  }
})


vim.cmd("colorscheme nordfox")
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true


vim.o.clipboard = 'unnamedplus'

vim.opt.splitright = true
