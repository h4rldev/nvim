return {
  -- Dependencies
  { url = 'nvim-lua/plenary.nvim' },
  { url = 'MunifTanjim/nui.nvim' },
  { url = 'folke/snacks.nvim' },

  -- Icons
  { url = 'nvim-tree/nvim-web-devicons' },
  { url = 'nvim-mini/mini.icons', name = 'mini-icons' },

  -- LSP
  { url = 'neovim/nvim-lspconfig', name = 'lspconfig' },
  { url = 'folke/lazydev.nvim', name = 'lazydev' },

  -- Snippet collection
  { url = 'rafamadriz/friendly-snippets' },

  -- Snippet engine
  { url = 'L3MON4D3/LuaSnip', version = 'v2.4.0', run = 'make install_jsregexp' },

  -- Completion
  { url = 'saghen/blink.cmp', name = 'blink-cmp', version = 'v1.7.0', run = 'cargo build --release' },

  -- Plugins
  { url = 'nanotee/zoxide.vim', name = 'zoxide' },
  { url = 'catppuccin/nvim', name = 'catppuccin' },
  { url = 'nvim-neo-tree/neo-tree.nvim', name = 'neo-tree', event = 'UIEnter' },
  { url = 'vyfor/cord.nvim', name = 'cord' },
  { url = 'romus204/referencer.nvim', name = 'referencer' },
  { url = 'nvim-mini/mini.statusline', name = 'mini-statusline' },
  { url = 'nvim-mini/mini.trailspace', name = 'mini-trailspace' },
  { url = 'nvim-mini/mini.surround', name = 'mini-surround' },
  { url = 'folke/which-key.nvim', name = 'which-key', event = 'VimEnter' },
  { url = 'lewis6991/gitsigns.nvim', name = 'gitsigns' },
  { url = 'oribarilan/lensline.nvim', name = 'lensline', version = 'release/2.x', event = 'LspAttach' },
  { url = 'NotAShelf/direnv.nvim', name = 'direnv' },
  { url = 'folke/trouble.nvim', name = 'trouble' },
}
