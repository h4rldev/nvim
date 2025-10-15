--- Vim Globals

-- Set leader key to space
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- We do have nerd fonts
vim.g.have_nerd_font = true

-- Line numbers are on by default
vim.o.number = true

-- Enable mouse mode, for resizing splits and selecting text etc
vim.o.mouse = 'a'

-- Not show mode, since we'll use a statusline instead
vim.o.showmode = false

-- Set clipboard to use system clipboard
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Set case sensitivity for search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Sign column should be on by default
vim.o.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250

-- Decrease mapped sequens wait time
vim.o.timeoutlen = 300

-- Splits are allowed to open vertically and horizontally
vim.o.splitright = true
vim.o.splitbelow = true

-- Show tabs and trailing spaces visually
vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview subsitutions live as you type
vim.o.inccommand = 'split'

-- Show what line we're on
vim.o.cursorline = true

-- How many minimum lines of content to keep above and below the cursor
vim.o.scrolloff = 8

-- if operation fails due to unsaved changes, don't quit, but ask for confirmation to save
vim.o.confirm = true

-- Set tab width to 2 spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2

--- General Keymaps

-- Clear search highlighting
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Show diagnostic [Q]uickfix list' })

-- Save on Ctrl-s
vim.keymap.set('n', '<C-s>', ':w<CR>', { desc = 'Save file' })

--- Plugin management

-- Add lynn.nvim; a plugin manager
vim.pack.add {
  { src = 'https://github.com/comfysage/lynn.nvim', name = 'lynn' },
}

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', name = 'neo-tree' },
}

local utils = require 'utils'
utils.timer.start_background_checks()

vim.api.nvim_create_user_command('StopBackgroundUpdates', function()
  utils.timer.stop_background_checks()
  vim.notify 'Background updates stopped'
end, {})

vim.api.nvim_create_user_command('ResumeBackgroundUpdates', function()
  utils.timer.resume_background_checks()
  vim.notify 'Background updates resumed'
end, {})

vim.api.nvim_create_user_command('ForcePluginUpdate', function()
  utils.timer.background_checker()
  vim.notify 'Forcing plugin update check'
end, {})

vim.api.nvim_create_user_command('UpdatePlugins', function()
  vim.pack.update()
end, {})

require('lynn').setup 'plugins'
require('lsp').setup_lsp()
