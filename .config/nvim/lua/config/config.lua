-- disable netrw at the very start of your init.lua (strongly advised)
-- (advised by nvimtree plugin)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
-- (advised by nvimtree plugin)
-- (advised by melange nvim theme)
vim.opt.termguicolors = true

-- used by melange nvim theme
vim.cmd.colorscheme 'melange'

-- set file numbers (relative)
vim.opt.nu = true
vim.opt.relativenumber = true

-- make tab 4 spaces wide
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- set <leader> key
vim.g.mapleader = ';'

-- exit insert mode
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap=true })


