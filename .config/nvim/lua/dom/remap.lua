vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;v", vim.cmd.Ex) -- netrw

vim.keymap.set("n", "<C-d>", "<C-d>zz") -- Center block
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- Center block

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]) -- Escape terminal mode
vim.keymap.set('n', "<A-v>", "<cmd>vsp<CR>") -- Vertical split

vim.keymap.set({"n","i","v"}, "<C-h>", "<Esc><C-w>h") -- Change panes
vim.keymap.set({"n","i","v"}, "<C-l>", "<Esc><C-w>l") -- Change panes
vim.keymap.set({"n","i","v"}, "<C-j>", "<Esc><C-w>j") -- Change panes
vim.keymap.set({"n","i","v"}, "<C-k>", "<Esc><C-w>k") -- Change panes

--vim.keymap.set({"n","i","v"}, "<C-h>", "<cmd>TmuxNavigateLeft<cr>")
--vim.keymap.set({"n","i","v"}, "<C-l>", "<cmd>TmuxNavigateRight<cr>")

vim.keymap.set({"n","i"}, "<A-Left>", "[[:vertical resize -10<CR>]]") -- for tmux
vim.keymap.set({"n","i"}, "<A-Right>", "[[:vertical resize +10<CR>]]") -- for tmux

vim.keymap.set("t", "<C-k>", [[<C-\><C-n>:winc k<CR>]]) -- Scroll to top window when in terminal mode

vim.keymap.set('n', '<space>n', [[:tabnew]], {})
vim.keymap.set('n', '<space>q', [[:tabclose]], {})

vim.keymap.set('n', '<A-;>', [[:tabnext <CR>]], {})
vim.keymap.set('n', '<A-g>', [[:tabprev <CR>]], {})

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- copy to clipboard better
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- better pasting

-- set file to be executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.api.nvim_set_keymap('n', 'gn', '<cmd>lua vim.diagnostic.goto_next({popup = false})<CR>', { noremap = true, silent = true })

-- 
-- -- open corresponding PDF in Zathura
-- local function ZathuraOpenPdf()
--   local full_path = vim.fn.expand("%:p")
--   local pdf_file = full_path:gsub("%.tex$", ".pdf")
--   vim.fn.jobstart({ "zathura", pdf_file }, { detach = true })
-- end
-- 
-- vim.api.nvim_create_autocmd("BufWritePost", {
--   pattern = "*.tex",
--   callback = function()
--     vim.fn.jobstart("make", { detach = true })
--   end,
-- })
-- 
-- -- open zathura 
-- vim.keymap.set("n", "<A-p>", ZathuraOpenPdf, { noremap = true, silent = true })
-- 
-- vim.keymap.set("n", "<A-m>", function()
--   vim.cmd("make")
-- end, { noremap = true, silent = true })
-- 
-- 
