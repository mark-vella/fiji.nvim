local lsp_zero = require('lsp-zero')
lsp_zero.extend_lspconfig()

lsp_zero.preset("recommended")

local lua_opts = lsp_zero.nvim_lua_ls()
require('lspconfig').lua_ls.setup(lua_opts)

lsp_zero.on_attach(function(_client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {
        'rust_analyzer',
        'vuels',
        'dockerls',
        'docker_compose_language_service',
        'eslint',
    },
    handlers = {
        lsp_zero.default_setup,
        tsserver = function()
            require("typescript-tools").setup {
                on_attach = function()
                    print('typescript-tools on_attach')
                end,
                settings = {
                    separate_diagnostic_server = true,
                    publish_diagnostic_on = "insert_leave",
                    expose_as_code_action = {},
                    tsserver_path = nil,
                    tsserver_plugins = {
                        "@styled/typescript-styled-plugin",
                    },
                    tsserver_max_memory = "auto",
                    tsserver_format_options = {},
                    tsserver_file_preferences = {},
                    complete_function_calls = false,
                },
            }
        end,
    },
})
