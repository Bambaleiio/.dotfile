-- default vim options
vim.opt.fileencoding = "utf-8"
vim.opt.termguicolors = true

vim.wo.wrap = true
vim.wo.linebreak = true

vim.opt.relativenumber = true

vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.showmode = false
vim.opt.cursorline = false

vim.opt.completeopt = "menu,menuone,noselect"


-- Do not source the default filetype.vim (filetype.lua)
vim.g.did_load_filetypes = 1


-- vimtex
vim.g.vimtex_view_general_viewer = 'zathura'
vim.g.vimtex_syntax_enabled = false

vim.g.vimtex_quickfix_open_on_warnings = 0
vim.g.vimtex_quickfix_open_on_warning = 0
