vim.g.gitblame_display_virtual_text = true -- Disable virtual text
vim.g.gitblame_date_format = '%r'
vim.g.gitblame_message_when_not_committed = 'Uncommitted changes'

require('lua-timeago').set_language(require('lua-timeago/languages/en'))

local git_blame = require('gitblame')

require('lualine').setup({
    sections = {
        lualine_c = {
            { git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }
        }
    }
})
