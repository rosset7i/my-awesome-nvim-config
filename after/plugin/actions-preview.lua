local actions = require('actions-preview');

actions.setup {}

vim.keymap.set({ 'n', 'v' }, '<leader>la', actions.code_actions)
