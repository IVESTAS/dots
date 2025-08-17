vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;v", vim.cmd.Ex) -- netrw

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]) -- Escape terminal mode
vim.keymap.set('n', "<A-v>", "<cmd>vsp<CR>") -- Vertical split

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Better clipboard 
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Better pasting

-- Set file to be executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
