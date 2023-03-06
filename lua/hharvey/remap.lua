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

--Terminal open and resize
vim.keymap.set("n", "<leader>e", ":vert split | terminal<CR> :vert resize 180<CR>")
vim.keymap.set("n", "<leader>t", ":botright split | terminal<CR> :resize 20<CR>")


-- Remap Terminal Close
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
--stolen from prime time
vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
