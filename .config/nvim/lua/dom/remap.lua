vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;v", vim.cmd.Ex) -- netrw

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Center block
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Center block

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]) -- Escape terminal mode
vim.keymap.set('n', "<A-v>", "<cmd>vsp<CR>") -- Vertical split

vim.keymap.set({"n","i","v"}, "<C-S-h>", "<Esc><C-w>h") -- Change panes
vim.keymap.set({"n","i","v"}, "<C-S-l>", "<Esc><C-w>l") -- Change panes
vim.keymap.set({"n","i","v"}, "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
vim.keymap.set({"n","i","v"}, "<C-l>", "<cmd>TmuxNavigateRight<cr>")

vim.keymap.set({"n","i"}, "<A-Left>", "[[:vertical resize -10<CR>]]") -- for tmux
vim.keymap.set({"n","i"}, "<A-Right>", "[[:vertical resize +10<CR>]]") -- for tmux

vim.keymap.set("t", "<C-k>", [[<C-\><C-n>:winc k<CR>]]) -- Scroll to top window when in terminal mode

vim.keymap.set('n', '<space>n', [[:tabnew]], {})
vim.keymap.set('n', '<space>q', [[:tabclose]], {})

vim.keymap.set('n', '<A-;>', [[:tabnext <CR>]], {})
vim.keymap.set('n', '<A-g>', [[:tabprev <CR>]], {})

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- copy to clipboard better
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- better pasting

vim.keymap.set({"n","v","i"}, "<A-q>", "<cmd>%!hindent<CR>") -- Format haskell

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- set file to be executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next({popup = false})<CR>', { noremap = true, silent = true })
