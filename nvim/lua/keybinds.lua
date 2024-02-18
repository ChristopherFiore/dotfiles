local api = vim.api

-- Pane splitting
api.nvim_set_keymap('n', '<leader>sv', ':vsplit<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>sh', ':split<CR>', { noremap = true })

-- Pane navigation
api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Paste from clipboard
api.nvim_set_keymap('n', '<C-p>', '"+p', { noremap = true })

-- vasily exit insert mode
api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true })

-- Telescope
api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fb', ':Telescope buffers<CR>', { noremap = true })
api.nvim_set_keymap('n', '<leader>fh', ':Telescope help_tags<CR>', { noremap = true })

-- Tree
api.nvim_set_keymap('n', '<leader>t', ':NvimTreeToggle<CR>', { noremap = true })

