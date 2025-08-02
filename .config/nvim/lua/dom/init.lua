require("dom.remap")
require("dom.set")
require("dom.lazy_init")

local augroup = vim.api.nvim_create_augroup
local domGroup = augroup('dom', {})
local autocmd = vim.api.nvim_create_autocmd
