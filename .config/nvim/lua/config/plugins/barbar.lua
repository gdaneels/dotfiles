local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', 'b[', '<Cmd>BufferPrevious<CR>', opts)
map('n', 'b]', '<Cmd>BufferNext<CR>', opts)
map('n', 'bc', '<Cmd>BufferClose<CR>', opts)

vim.g.barbar_auto_setup = false -- disable auto-setup

