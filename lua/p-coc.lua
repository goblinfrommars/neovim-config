local keyset = vim.keymap.set
function _G.check_back_space()
  local col = vim.fn.col('.') - 1
  return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

local opts = { silent = true, noremap = true, expr = true, replace_keycodes = false }
-- keyset("i", "<cr>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<cr>" : coc#refresh()', opts)
vim.api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "<C-n>" : v:lua.check_back_space() ? "<Tab>" : "<C-x><C-o>"',
  { expr = true })
keyset("i", "<S-TAB>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)
-- keyset("i", "<TAB>", [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<TAB>"]], opts)
vim.api.nvim_set_keymap('i', '<CR>', 'pumvisible() ? coc#_select_confirm() : "<CR>"', { expr = true })
keyset("i", "<c-j>", "<Plug>(coc-snippets-expand-jump)")
keyset("i", "<c-space>", "coc#refresh()", { silent = true, expr = true })
keyset("n", "[g", "<Plug>(coc-diagnostic-prev)", { silent = true })
keyset("n", "]g", "<Plug>(coc-diagnostic-next)", { silent = true })
