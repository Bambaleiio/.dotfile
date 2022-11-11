-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- clear search results
map("n", ",<Space>", ":nohlsearch<CR>", { silent = true })
-- jk like <Esc>
map("i", "jk", "<Esc>")




-- compile cpp
-- map("n", "<C-h>", ":!g++ -Wall % && ./a.out<cr>", { silent = true })

-- toggle NvimTree
map("n", "<C-b>", ":NvimTreeToggle<CR>", { silent = true })
