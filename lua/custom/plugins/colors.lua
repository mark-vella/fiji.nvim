return {
  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'vscode'
      vim.o.background = 'dark'
    end,
  },

  { 'rebelot/kanagawa.nvim' },

  { 'catppuccin/nvim', name = 'catppuccin' },

  { 'rose-pine/neovim', name = 'rose-pine' },

  { 'sainnhe/gruvbox-material' },

  { 'projekt0n/github-nvim-theme' },

  { 'jthvai/lavender.nvim' },

  {
    'savq/melange-nvim',
    config = function()
      vim.cmd.colorscheme 'melange'
    end,
  },

  {
    'briones-gabriel/darcula-solid.nvim',
    dependencies = {
      'rktjmp/lush.nvim',
    },
    config = function()
      vim.cmd.colorscheme 'darcula-solid'
      vim.o.background = 'dark'
      vim.o.termguicolors = true
    end,
  },
}
