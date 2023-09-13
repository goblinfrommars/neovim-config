require('kommentary.config').use_extended_mappings()
vim.api.nvim_set_keymap("n", "cc", "<Plug>kommentary_line_increase", {})
vim.api.nvim_set_keymap("n", "<leader>ci", "<Plug>kommentary_motion_increase", {})
vim.api.nvim_set_keymap("x", "ccc", "<Plug>kommentary_visual_increase", {})
vim.api.nvim_set_keymap("n", "cd", "<Plug>kommentary_line_decrease", {})
vim.api.nvim_set_keymap("n", "<leader>cd", "<Plug>kommentary_motion_decrease", {})
vim.api.nvim_set_keymap("x", "ccd", "<Plug>kommentary_visual_decrease", {})

require('kommentary.config').configure_language("blade.php", {
  single_line_comment_string = { "{{!-- ", " --}}" },
  multi_line_comment_strings = { "/*", "*/" },
})
