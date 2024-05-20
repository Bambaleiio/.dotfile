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


-- copy/paste
-- key.setmap.set('v', '<C-c>', '"+y') -- Copy

-- key.setmap.set('n', '<C-V>', '"+P') -- Paste normal mode

-- key.setmap.set('v', '<C-v>', '"+P') -- Paste visual mode

-- key.setmap.set('c', '<C-v>', '<C-R>+') -- Paste command mode

-- key.setmap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
