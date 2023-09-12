local c = require('vscode.colors').get_colors()

require('vscode').setup({
    transparent = false,
    italic_comments = true,
    disable_nvimtree_bg = true,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },
    group_overrides = {
        Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
    }
})

require('themery').setup({
    livePreview = true,
    themes = {
        {
            name = "Kanagawa - Lotus",
            colorscheme = "kanagawa-lotus",
            before = [[ vim.opt.background = 'light' vim.o.termguicolors = false ]],
            after = [[ ]],
        },
        {
            name = "VSCode Light+",
            colorscheme = 'vscode',
            before = [[ vim.opt.background = 'light' vim.o.termguicolors = false ]],
            after = [[ ]],
        },
        {
            name = "VSCode Dark+",
            colorscheme = "vscode",
            before = [[ vim.opt.background = 'dark' vim.o.termguicolors = false ]],
            after = [[ ]],
        },
        {
            name = "JetBrains - Darcula",
            colorscheme = "darcula-solid",
            before = [[ vim.opt.background = 'dark' vim.o.termguicolors = true ]],
            after = [[ ]],
        },
        {
            name = "GitHub - Dark",
            colorscheme = "github-colors",
            before = [[ vim.opt.background = 'dark' vim.o.termguicolors = true ]],
            after = [[ ]],
        },
        {
            name = "Moonlight - Dark",
            colorscheme = "moonlight",
            before = [[ vim.opt.background = 'dark' vim.o.termguicolors = false ]],
            after = [[ ]],
        },
    }
})
