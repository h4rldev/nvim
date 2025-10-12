require('which-key').setup()

vim.keymap.set('n', '<leader>', '<cmd>WhichKey<cr>', { noremap = true, silent = true })
