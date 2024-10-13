-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
      sidebar_filetypes = {
        ['neo-tree'] = { event = 'BufWipeout' },
      },
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  { 'actionshrimp/direnv.nvim', opts = {} },
  {
    'vhyrro/luarocks.nvim',
    priority = 1001, -- this plugin needs to run before anything else
    opts = {
      rocks = { 'magick' },
    },
  },
  {
    'mfussenegger/nvim-jdtls',
  },
  {
    'wakatime/vim-wakatime',
    lazy = false,
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    'boganworld/crackboard.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local file_path = '/home/h4rl/.config/nvim/token.txt'
      local f = io.open(file_path, 'r')
      if f ~= nil then
        local content = f:read '*a'
        f:close()
        require('crackboard').setup {
          session_key = content,
        }
      else
        vim.notify('File does not exist: ' .. file_path, vim.log.levels.WARN)
        require('crackboard').setup {}
      end
    end,
  },
}
