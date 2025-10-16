local nvterm = require 'nvterm'
local nvterm_terminal = require 'nvterm.terminal'

nvterm.setup {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = 'single',
      },
      horizontal = { location = 'rightbelow', split_ratio = 0.3 },
      vertical = { location = 'rightbelow', split_ratio = 0.5 },
    },
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
}

vim.keymap.set('n', '<A-v>', function()
  nvterm_terminal.toggle 'vertical'
end, { silent = true, noremap = true, desc = 'Toggle vertical terminal' })

vim.keymap.set('n', '<A-h>', function()
  nvterm_terminal.toggle 'horizontal'
end, { silent = true, noremap = true, desc = 'Toggle horizontal terminal' })

vim.keymap.set('n', '<A-i>', function()
  nvterm_terminal.toggle 'float'
end, { silent = true, noremap = true, desc = 'Toggle float terminal' })
