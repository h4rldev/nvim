return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    config = function()
      require('ibl').setup {
        exclude = {
          filetypes = { 'dashboard' }, -- Exclude dashboard filetype
        },
      }
    end,
    main = 'ibl',
    opts = {},
  },
}
