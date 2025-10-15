local trouble = require 'trouble'

trouble.setup()

-- vim.api.nvim_create_user_command('Trouble', function()
--   require 'trouble'
-- end, {})

vim.keymap.set('n', '<leader>xx', function()
  trouble.toggle { mode = 'diagnostics', focus = true }
end, { desc = 'Toggle Trouble' })
