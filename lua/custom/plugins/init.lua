-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			require("neo-tree").setup({
				window = {
					position = "left",
					width = 40,
				},
			})
		end,
	},

	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({})
		end,
	},

	{
		"Mofiqul/vscode.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("vscode")
			vim.o.background = "dark"
		end,
	},

	{ "rebelot/kanagawa.nvim" },

	{ "catppuccin/nvim", name = "catppuccin" },

	{ "rose-pine/neovim", name = "rose-pine" },

	{ "sainnhe/gruvbox-material" },

	{ "projekt0n/github-nvim-theme" },

	{ "jthvai/lavender.nvim" },

	{
		"zaldih/themery.nvim",
		config = function()
			require("themery").setup({
				themes = {
					-- Dark Colorschemes
					"vscode",
					"kanagawa-wave",
					"kanagawa-dragon",
					"catppuccin-frappe",
					"catppuccin-macchiato",
					"catppuccin-mocha",
					"rose-pine-main",
					"rose-pine-moon",
					"github_dark",
					"github_dark_default",
					"github_dark_dimmed",
					"github_dark_high_contrast",
					-- Light Colorschemes
					"kanagawa-lotus",
					"catppuccin-latte",
					"rose-pine-dawn",
					"github_light",
					"github_light_default",
					"github_light_high_contrast",
				},
			})
		end,
	},

	{
		"Equilibris/nx.nvim",

		dependencies = {
			"nvim-telescope/telescope.nvim",
		},

		opts = {
			-- See below for config options
			nx_cmd_root = "npx nx",
		},

		-- Plugin will load when you use these keys
		keys = {
			{ "<leader>nx", "<cmd>Telescope nx actions<CR>", desc = "nx actions" },
		},
	},
}
