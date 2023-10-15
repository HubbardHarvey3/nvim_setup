require('gitsigns').setup()

vim.keymap.set("n", "<leader>gl", ":Git log --oneline --decorate --graph<CR>")
