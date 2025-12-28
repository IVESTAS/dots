vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.expandtab = true 
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true

vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/.undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "no" -- error column

vim.opt.updatetime = 50
--vim.opt.colorcolumn = "120"
vim.g.mapleader = " "
vim.opt.cursorline = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.o.cinoptions = "l1"

-- fix comments continuing on new lines 
vim.api.nvim_create_autocmd("BufEnter", {
  callback = function()
    vim.opt.formatoptions:remove("r")
  end,
})

-- c++ garbage that nvim includes when vim doesn't
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp",
  callback = function()
    vim.opt_local.cindent = false
  end,
})

-- disable treesitter
-- if vim had builtin telescope id never use trash ass nvim
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.treesitter.stop()
  end,
})

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>;v", vim.cmd.Ex) -- netrw

vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]]) -- Escape terminal mode

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]]) -- Better clipboard 
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Better pasting

-- Set file to be executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- zenburn looks ass in nvim vs vim, some shit they changed i guess
vim.cmd("colorscheme zenburn")
vim.cmd("syntax on")
--vim.api.nvim_set_hl(0, 'Comment', { fg = 'grey', }) 

require("config.lazy")
