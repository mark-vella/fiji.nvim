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

require("catppuccin").setup({
    flavour = "latte", -- latte, frappe, macchiato, mocha
    background = {     -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false,     -- shows the '~' characters after the end of buffers
    term_colors = false,            -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false,            -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,          -- percentage of the shade to apply to the inactive window
    },
    no_italic = false,              -- Force no italic
    no_bold = false,                -- Force no bold
    no_underline = false,           -- Force no underline
    styles = {                      -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },    -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = false,
    },
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
            name = "Catppuccin",
            colorscheme = 'catppuccin',
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
