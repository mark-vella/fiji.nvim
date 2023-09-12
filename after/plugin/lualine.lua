vim.g.gitblame_display_virtual_text = true -- Disable virtual text
vim.g.gitblame_date_format = '%r'
vim.g.gitblame_message_when_not_committed = 'Uncommitted changes'
vim.g.gitblame_message_template = '<author>, <date>, <summary>'

require('lua-timeago').set_language(require('lua-timeago/languages/en'))

local function get_blame()
    local git_blame = require('gitblame')
    local blame_text = git_blame.get_current_blame_text()
    local has_blame = git_blame.is_blame_text_available()

    if not has_blame then
        return ""
    end

    return string.sub(blame_text, 1, 80)
end

local function get_branch()
    require("lualine.components.branch.git_branch").init()
    local branch = require("lualine.components.branch.git_branch").get_branch()
    return string.sub(branch, 1, 40)
end

require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {
            get_branch,
            'diff',
            get_blame,
        },
        lualine_c = {},
        lualine_x = {'filename'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
