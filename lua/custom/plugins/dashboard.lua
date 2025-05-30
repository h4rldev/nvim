return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'doom', --  theme is doom and hyper default is hyper
      config = {
        header = {
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          ' ,--.       ,---.       ,--. ',
          ' |  ,---.  /    |,--.--.|  | ',
          "|  .-.  |/  '  ||  .--'|  |",
          "|  | |  |'--|  ||  |   |  |",
          "`--' `--'   `--'`--'   `--'",
          '',
          '',
        },
        center = {

          {
            icon = ' ',
            icon_hl = 'String',
            desc = ' Browse projects',
            desc_hl = 'group',
            key = 'b',
            key_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = ':Neotree dir=~/projects/',
          },
          {
            icon = '󰈔 ',
            icon_hl = 'String',
            desc = ' Browse old files',
            desc_hl = 'group',
            key = 'o',
            key_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = ':Telescope oldfiles',
          },
          {
            icon = ' ',
            icon_hl = 'String',
            desc = ' Browse config',
            desc_hl = 'group',
            key = 'c',
            key_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = ':Neotree dir=~/.config/nvim/',
          },
          {
            icon = ' ',
            icon_hl = 'Title',
            desc = ' Lazy',
            desc_hl = 'group',
            key = 'l',
            key_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = ':Lazy',
          },
          -- {
          --   icon = ' ',
          --   icon_hl = 'Title',
          --   desc = ' Mason',
          --   desc_hl = 'group',
          --   key = 'm',
          --   key_hl = 'group',
          --   key_format = ' [%s]', -- `%s` will be substituted with value of `key`
          --   action = ':Mason',
          -- },
          {
            icon = ' ',
            icon_hl = 'Error',
            desc = ' Exit',
            desc_hl = 'group',
            key_format = ' [%s]', -- `%s` will be substituted with value of `key`
            action = ':qa!',
          },
        },
        footer = {
          'h4rl, 2025',
        },
      },
      hide = {
        statusline = false,
        tabline = true,
        winbar = true,
      },
    }
    vim.g.nvim_dashboard_ibl = false
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
