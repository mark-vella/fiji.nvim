vim.cmd("autocmd! BufWritePre")

vim.cmd [[
autocmd BufWritePre * execute 'normal! mZggVG=''Z'
]]
