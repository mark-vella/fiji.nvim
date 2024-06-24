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
			nx_cmd_root = "npx nx",
		},
		keys = {
			{ "<leader>nx", "<cmd>Telescope nx actions<CR>", desc = "nx actions" },
		},
	},

	{
		"xiyaowong/transparent.nvim",
		config = function()
			require("transparent").setup({ -- Optional, you don't have to run setup.
				groups = { -- table: default groups
					"Normal",
					"NormalNC",
					"Comment",
					"Constant",
					"Special",
					"Identifier",
					"Statement",
					"PreProc",
					"Type",
					"Underlined",
					"Todo",
					"String",
					"Function",
					"Conditional",
					"Repeat",
					"Operator",
					"Structure",
					"LineNr",
					"NonText",
					"SignColumn",
					"CursorLine",
					"CursorLineNr",
					"StatusLine",
					"StatusLineNC",
					"EndOfBuffer",
				},
				extra_groups = {}, -- table: additional groups that should be cleared
				exclude_groups = {}, -- table: groups you don't want to clear
			})
		end,
	},

	{
		"wincent/ferret",
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					icons_enabled = true,
					theme = "auto",
					component_separators = { left = "", right = "" },
					section_separators = { left = "", right = "" },
					disabled_filetypes = {
						statusline = {},
						winbar = {},
					},
					ignore_focus = {},
					always_divide_middle = false,
					globalstatus = false,
					refresh = {
						statusline = 1000,
						tabline = 1000,
						winbar = 1000,
					},
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "diff", "diagnostics" },
					lualine_c = {
						{
							"filename",
							file_status = true,
							newfile_status = false,
							path = 1,
							shorting_target = 40,
							symbols = {
								modified = "[+]",
								readonly = "[-]",
								unnamed = "[No Name]",
								newfile = "[New]",
							},
						},
					},
					lualine_x = { "" },
					lualine_y = { "filetype" },
					lualine_z = { "branch" },
				},
				inactive_sections = {
					lualine_a = {},
					lualine_b = {},
					lualine_c = { "filename" },
					lualine_x = {},
					lualine_y = {},
					lualine_z = {},
				},
				tabline = {},
				winbar = {},
				inactive_winbar = {},
				extensions = {},
			})
		end,
	},
}
