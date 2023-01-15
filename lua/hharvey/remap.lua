local builtin = require('telescope.builtin')
vim.g.mapleader = " "
-- Insert
vim.keymap.set("i", "jj", "<Esc>")

-- Normal
vim.keymap.set("n", "B", ":bnext<CR>")
vim.keymap.set("n", "Z", ":bp<CR>")
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})




-- Remap Terminal Close
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

