-- packer
require('plugins')


-- basic vim options
require('options')
-- colorscheme
require('colorscheme')
-- keymaps
require("mappings")


-- LSP
require('mason-config')
require('lsp')

-- treesitter
require('treesitter')

-- filetypes
require("filetype-config")

-- telescope
require("telescope-config")

-- statusline
require("lualine-config")
