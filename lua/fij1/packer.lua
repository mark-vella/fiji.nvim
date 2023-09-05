return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use({
        'rebelot/kanagawa.nvim',
        as = "kanagawa",
        config = function()
            vim.cmd('colorscheme kanagawa-lotus')
        end
    })

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- syntax highlighting
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    -- undo
    use('mbbill/undotree')

    -- git
    use('tpope/vim-fugitive')

    -- language server
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
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
        dependencies = { "nvim-lua/plenary.nvim"}
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
end)
