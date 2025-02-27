vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

-- vim.opt_local.formatprg = hindent
-- vim.opt.splitbelow = true

vim.g.mapleader = " "
vim.opt.cursorline = false

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.o.cinoptions = "l1"
--vim.o.cindent = false

vim.opt.background = "dark"  -- or "dark" based on your preference
vim.cmd("colorscheme habamax")

-- Define the key mapping
vim.api.nvim_set_keymap('n', '<Leader>st', ':lua ToggleBackground()<CR>', { noremap = true, silent = true })

-- Function to toggle background between light and dark
function ToggleBackground()
  if vim.o.background == 'dark' then
    vim.o.background = 'light'
  else
    vim.o.background = 'dark'
  end
end
