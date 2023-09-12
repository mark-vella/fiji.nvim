local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>9", function() ui.nav_prev() end)
vim.keymap.set("n", "<leader>0", function() ui.nav_next() end)
