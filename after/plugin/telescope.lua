local builtin = require('telescope.builtin')
local telescope = require('telescope')

local open_in_nvim_tree = function(prompt_bufnr)
    local action_state = require "telescope.actions.state"
    local actions = require "telescope.actions"

    local entry = action_state.get_selected_entry()[1]
    actions._close(prompt_bufnr, true)

    vim.cmd("NvimTreeClose")
    vim.cmd("edit " .. entry)
    vim.cmd("NvimTreeFindFile")
end

vim.keymap.set('n', '<leader><space>', builtin.git_files, {})
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input('Grep > ') });
end)

