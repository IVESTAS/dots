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
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "no" -- error column

vim.opt.updatetime = 50
vim.opt.colorcolumn = "120"
vim.g.mapleader = " "
vim.opt.cursorline = true

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.o.cinoptions = "l1"
--vim.o.cindent = false


--vim.opt.background = "dark"
--vim.cmd("colorscheme paramount")
--vim.cmd("syntax on")

--vim.api.nvim_set_hl(0, 'CursorLine', { bg = '#000000' })

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

-- nvim garbage for builtin syntax coloring
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.treesitter.stop()
  end,
})


