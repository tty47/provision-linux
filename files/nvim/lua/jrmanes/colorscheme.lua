-- Themes Config
-- ---------------------------------------------------------------------
-- TokyoNight
-- vim.cmd("colorscheme tokyonight")
-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_transparent_sidebar = true

-- ---------------------------------------------------------------------
-- NightFox
-- require('nightfox').setup({
--   options = {
--     -- Compiled file's destination location
--     transparent = true, -- Disable setting background
--   }
-- })
-- vim.cmd("colorscheme nightfox")
-- ---------------------------------------------------------------------
-- https://github.com/catppuccin/nvim
local colors = require("catppuccin.palettes").get_palette()
require("catppuccin").setup({
	flavour = "macchiato", --latte, frappe, macchiato, mocha
	color_overrides = {
		mocha = {
			base = "#000000",
		},
	},
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
	custom_highlights = {
		Comment = { fg = colors.overlay1 },
		LineNr = { fg = colors.overlay1 },
	},
	integrations = {
		cmp = true,
		dap = {
			enabled = true,
			enable_ui = true,
		},
		fidget = true,
		gitsigns = true,
		indent_blankline = {
			enabled = true,
			colored_indent_levels = false,
		},
		lsp_trouble = true,
		markdown = true,
		mason = true,
		native_lsp = {
			enabled = true,
		},
		neogit = true,
		neotree = true,
		nvimtree = true,
		symbols_outline = true,
		telescope = true,
		treesitter = true,
		treesitter_context = true,
		which_key = true,
	},
})

-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })


-- Add this line to switch to catppuccin
-- colorscheme catppuccin
-- Add this line to switch to nord
-- colorscheme nord

vim.cmd([[
set background=dark
set termguicolors
colorscheme catppuccin
]])
