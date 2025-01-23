-- disable netrw at the very start of your init.lua (strongly advised)
-- (advised by nvimtree plugin)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set file numbers (relative)
vim.opt.nu = true
vim.opt.relativenumber = true

-- make tab 4 spaces wide
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- set <leader> key
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- exit insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap=true })

-- vim.opt.clipboard="unnamed,unnamedplus"

-- yank all in buffer 
vim.api.nvim_set_keymap('n', '<leader>a', 'ggVG', { noremap=false })

-- move to previous buffer
vim.api.nvim_set_keymap('n', '<leader>b', '<C-^>', { noremap=false })

-- show current buffer in status line
vim.api.nvim_set_keymap('n', '<leader>p', ':echo expand(\'%\')<cr>', { noremap=false })

-- quit
vim.api.nvim_set_keymap('n', '<leader>x', ':q<cr>', { noremap=false })

-- quit
vim.api.nvim_set_keymap('n', '<leader>v', ':e ~/.config/nvim/lua/config/config.lua<cr>', { noremap=false })
