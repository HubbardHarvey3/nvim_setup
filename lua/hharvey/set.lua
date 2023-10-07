vim.filetype.add({
  filename = {
    ['Jenkinsfile'] = 'groovy',
    ['jenkinsfile'] = 'groovy',
    ['deploy.jenkinsfile'] = 'groovy',
  }
})


vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true


vim.o.clipboard = 'unnamedplus'

vim.opt.splitright = true

vim.g.netrw_browse_split = 3
vim.g.netrw_liststyle = 3
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

vim.api.nvim_exec([[
  augroup TrimWhiteSpace
    autocmd!
    autocmd BufwritePre * :%s/\s\+$//e
  augroup expandtab
]], false)
