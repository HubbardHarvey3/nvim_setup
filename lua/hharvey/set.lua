vim.filetype.add({
  filename = {
    ['Jenkinsfile'] = 'groovy',
    ['jenkinsfile'] = 'groovy',
    ['deploy.jenkinsfile'] = 'groovy',
  }
})


vim.opt.nu = true
vim.opt.relativenumber = true
vim.cmd.colorscheme "catppuccin-macchiato"
vim.opt.termguicolors = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.signcolumn = 'yes'
vim.opt.list = true

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
