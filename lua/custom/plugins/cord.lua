return {
  'vyfor/cord.nvim',
  branch = 'master',
  build = ':Cord update',
  opts = {},
  config = function()
    require('cord').setup()
  end,
}
