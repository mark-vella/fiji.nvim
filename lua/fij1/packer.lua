return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorscheme - kanagawa
    use({
        'rebelot/kanagawa.nvim',
    })

    use { "briones-gabriel/darcula-solid.nvim", requires = "rktjmp/lush.nvim" }

    use 'lourenci/github-colors'

    use({
        'shaunsingh/moonlight.nvim',
        as = 'moonlight'
    })

    use 'Mofiqul/vscode.nvim'

    use { "catppuccin/nvim", as = "catppuccin" }

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require 'nvim-treesitter.configs'.setup {
                highlight = {
                    enabled = true,
                }
            }
        end,
    }

    -- undo
    use('mbbill/undotree')

    -- git
    use('tpope/vim-fugitive')

    -- lsp & autocompletion magic
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            -- mason to handle auto-installation of our various lsps
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- lsp Support
            { 'neovim/nvim-lspconfig' },
            -- autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    -- replacement for tsserver lsp
    use {
        "pmizio/typescript-tools.nvim",
        requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    }

    -- git gutter +/- flags
    use('nvim-awesome/vim-gitgutter')

    -- custom task bar
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    -- file explorer
    use 'nvim-tree/nvim-tree.lua'

    -- improved lsp snippets/suggestions
    use "rafamadriz/friendly-snippets"

    -- add symbols to make indentations pop
    use "lukas-reineke/indent-blankline.nvim"

    -- http client
    use {
        "rest-nvim/rest.nvim",
        requires = { "nvim-lua/plenary.nvim" }
    }

    -- icons
    use 'nvim-tree/nvim-web-devicons'

    -- ai completion for lazy developers
    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end,
    }

    -- manipulate surrounding, wrapping text
    use 'tpope/vim-surround'

    -- todo comment highlighting
    use {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" }
    }

    -- css color highlighting
    use 'ap/vim-css-color'

    -- git blame
    use {
        'f-person/git-blame.nvim',
        dependencies = { 'f-person/lua-timeago' }
    }

    -- emmet for impatient devs
    use 'mattn/emmet-vim'

    -- prettier formatting
    use('neovim/nvim-lspconfig')
    use('jose-elias-alvarez/null-ls.nvim')
    use('MunifTanjim/prettier.nvim')
    use('MunifTanjim/eslint.nvim')

    -- telescopic cheatsheet because vim is hard
    use {
        'sudormrfbin/cheatsheet.nvim',
        requires = {
            { 'nvim-telescope/telescope.nvim' },
            { 'nvim-lua/popup.nvim' },
            { 'nvim-lua/plenary.nvim' },
        }
    }

    -- themery because i cannot decide on a theme
    use 'zaldih/themery.nvim'

    -- i thought i could live without this but i cannot
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
end)
