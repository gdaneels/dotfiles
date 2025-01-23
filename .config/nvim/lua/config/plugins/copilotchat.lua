-- start CoPilot
vim.api.nvim_set_keymap('n', '<leader>c', ':CopilotChat<cr>', { noremap=false })

-- stop CoPilot
vim.api.nvim_set_keymap('n', '<leader>s', ':CopilotChatClose<cr>', { noremap=false })
