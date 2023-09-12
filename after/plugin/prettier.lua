local prettier = require("prettier")

prettier.setup({
    bin = 'prettierd',
    filetypes = {
        "css",
        "html",
        "javascript",
        "javascriptreact",
        "json",
        "lua",
        "markdown",
        "scss",
        "typescript",
        "typescriptreact",
        "yaml",
    },
})
