local keymap = vim.keymap
local g = vim.g

g.mapleader = ' '

keymap.set({'n', 'x'}, 'cp', '"+y') 	-- copy from clipboard
keymap.set({'n', 'x'}, 'cv', '"+p') 	-- paste from clipboard

keymap.set({'n', 'x'}, 'x', '"_x')  	-- delete without altering history

keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<CR>')  --Select all the text
