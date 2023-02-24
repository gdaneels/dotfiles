vim.api.nvim_set_keymap('n', '<C-t>', '<Cmd>NvimTreeToggle<CR>', { noremap=true })

-- empty setup using defaults
require("nvim-tree").setup({
    sync_root_with_cwd = true,
    view = {
        adaptive_size = false,
        side = "left",
    },
    git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
})
