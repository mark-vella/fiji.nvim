-- Default options:
require('kanagawa').setup({
    compile = false,             -- enable compiling the colorscheme
    undercurl = true,            -- enable undercurls
    commentStyle = { italic = false, bold = false },
    functionStyle = { bold = true },
    keywordStyle = { italic = false, bold = false },
    statementStyle = { italic = false, bold = false},
    typeStyle = {},
    transparent = false,         -- do not set background color
    dimInactive = true,         -- dim inactive window `:h hl-NormalNC`
    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
    colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    theme = "lotus",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
        light = "lotus"
    },
})

-- setup must be called before loading
vim.cmd("colorscheme kanagawa-lotus")
