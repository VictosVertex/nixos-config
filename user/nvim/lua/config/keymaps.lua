vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)

-- Disable arrow keys in normal mode to counter old habits
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set(
    'n', 
    '<leader>ff', 
    builtin.find_files, 
    { desc = 'Telescope find files' }
)
vim.keymap.set(
    'n',
    '<leader>fg', 
    builtin.live_grep,
    { desc = 'Telescope live grep' }
)
vim.keymap.set(
    'n', 
    '<leader>fb', 
    builtin.buffers,
    { desc = 'Telescope buffers' }
)
vim.keymap.set(
    'n', 
    '<leader>fh', 
    builtin.help_tags, 
    { desc = 'Telescope help tags' }
)
