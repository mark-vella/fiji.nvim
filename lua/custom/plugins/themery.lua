return {
  'zaldih/themery.nvim',
  config = function()
    require('themery').setup {
      themes = {
        -- Dark Colorschemes
        'darcula-solid',
        {
          name = 'vscode-dark',
          colorscheme = 'vscode',
          before = [[ vim.opt.background = "dark" ]],
        },
        'kanagawa-wave',
        'kanagawa-dragon',
        'catppuccin-frappe',
        'catppuccin-macchiato',
        'catppuccin-mocha',
        'rose-pine-main',
        'rose-pine-moon',
        'github_dark_dimmed',
        {
          name = 'melange-dark',
          colorscheme = 'melange',
          before = [[ vim.opt.background = "dark" ]],
        },
        -- Light Colorschemes
        'kanagawa-lotus',
        'catppuccin-latte',
        'rose-pine-dawn',
        'github_light_default',
        {
          name = 'vscode-light',
          colorscheme = 'vscode',
          before = [[ vim.opt.background = "light" ]],
        },
        {
          name = 'melange-light',
          colorscheme = 'melange',
          before = [[ vim.opt.background = "light" ]],
        },
      },
    }
  end,
}
