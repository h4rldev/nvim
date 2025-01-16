return {
  'vyfor/cord.nvim',
  branch = 'client-server',
  build = ':Cord build',
  opts = {},
  config = function()
    require('cord').setup()
  end,
}
